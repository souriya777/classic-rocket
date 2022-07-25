let debounceTimer;
let throttlePause;

function debounce(callback, time) {
  window.clearTimeout(debounceTimer);
  debounceTimer = window.setTimeout(callback, time);
}

function throttle(callback, time) {
  if (throttlePause) return;

  throttlePause = true;
  callback();

  setTimeout(() => {
    throttlePause = false;
  }, time);
}

function getPastelColor() {
  return `hsl(
    ${360 * Math.random()},
    ${25 + 70 * Math.random()}%,
    ${85 + 10 * Math.random()}%
  )`;
}

export { debounce, throttle, getPastelColor };