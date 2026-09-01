/* inseout — 공통 스크립트: 테마 토글 · 연락처 난독 해제 */
(function () {
  'use strict';

  /* ---- 테마 토글 (첫 페인트 전 적용은 각 페이지 head의 인라인 스크립트가 담당) ---- */
  var root = document.documentElement;
  var btn = document.getElementById('themeBtn');

  function label(t) {
    if (!btn) return;
    btn.textContent = t === 'dark' ? '☀' : '☾';
    btn.setAttribute('aria-label', t === 'dark' ? '밝은 테마로 전환' : '어두운 테마로 전환');
    btn.setAttribute('aria-pressed', String(t === 'dark'));
  }

  function current() {
    var stamped = root.getAttribute('data-theme');
    if (stamped) return stamped;
    return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light';
  }

  label(current());

  if (btn) {
    btn.addEventListener('click', function () {
      var next = current() === 'dark' ? 'light' : 'dark';
      root.setAttribute('data-theme', next);
      try { localStorage.setItem('theme', next); } catch (e) { /* 저장 불가 환경 무시 */ }
      label(next);
    });
  }

  /* ---- 연락처: 소스에 평문으로 두지 않기 ---- */
  var mail = atob('a2ltaW4wMHNlb0BnbWFpbC5jb20=');
  var tel = atob('KzgyIDEwLTMzNjUtNjQwMg==');
  var href = 'mailto:' + mail + '?subject=' + encodeURIComponent('[문의] ');

  document.querySelectorAll('[data-mail]').forEach(function (el) {
    if (el.tagName === 'A') el.href = href;
    if (el.hasAttribute('data-mail-text')) el.textContent = mail;
  });
  document.querySelectorAll('[data-tel]').forEach(function (el) {
    el.textContent = tel;
    if (el.tagName === 'A') el.href = 'tel:' + tel.replace(/[^+0-9]/g, '');
  });

  /* ---- 현재 페이지 내비 표시 ---- */
  var here = location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('.nav a[href]').forEach(function (a) {
    if (a.getAttribute('href') === here) a.setAttribute('aria-current', 'page');
  });
})();
