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
  const SATURATION_MIN = 25;
  // const LIGHTNESS_MIN = 85;
  // ${LIGHTNESS_MIN + 10 * Math.random()}
  const LIGHTNESS = 88;

  const pastel = `hsl(
    ${360 * Math.random()},
    ${SATURATION_MIN + 70 * Math.random()}%,
    ${LIGHTNESS}%
  )`;
  // TO DEBUG
  // console.log(`background-color: ${pastel}`);
  return pastel;
}

export { debounce, throttle, getPastelColor };