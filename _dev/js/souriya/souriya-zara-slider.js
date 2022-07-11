import { throttle } from './souriya-utils';

window.onload = function () {
  (function () {
    console.debug('souriya-zara-slider.js 😎');

    // VARIABLES
    const IMAGES = document.querySelector('.zara-slider__images');
    const IMAGES_HEIGHT = IMAGES.clientHeight;
    const THUMBNAIL_BUTTONS = document.querySelectorAll('.zara-slider__thumbnails button');
    const PROGRESS_BAR = document.querySelector('.zara-slider__progress-bar');
    const PROGRESS_HEIGHT = document.querySelector('.zara-slider__progress').clientHeight;
    const TOTAL = document.querySelector('.zara-slider__images > ul').childElementCount
    const progressStep = PROGRESS_HEIGHT / TOTAL;

    let currentSlide = 1;

    // FUNCTIONS
    function updateSlider(slideNumber) {
      IMAGES.style.transform = `translateY(-${(slideNumber - 1) * IMAGES_HEIGHT}px)`;
    }

    function updateSliderProgress(slideNumber) {
      PROGRESS_BAR.style.height = `${progressStep * slideNumber}px`;
    }

    function moveSlide(e) {
      const dir = Math.sign(e.deltaY);
      const isNext = dir > 0;
      if ((currentSlide === 1 && !isNext) || (currentSlide === TOTAL && isNext)) {
        return false;
      }

      currentSlide = isNext ? currentSlide + 1 : currentSlide - 1;
      updateSlider(currentSlide);
      updateSliderProgress(currentSlide);
    }

    // EVENTS
    IMAGES.addEventListener('wheel', e => {
      throttle(() => moveSlide(e), 1600);
      e.preventDefault();
    }, false);

    for (let i = 0; i < THUMBNAIL_BUTTONS.length; i++) {
      const button = THUMBNAIL_BUTTONS[i];

      button.addEventListener('click', () => {
        currentSlide = parseInt(button.dataset.slideNumber);
        updateSlider(currentSlide);
        updateSliderProgress(currentSlide);
      })
    }

    // INIT
    updateSliderProgress(currentSlide);
  })();
};
