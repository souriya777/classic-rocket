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

export { debounce, throttle };