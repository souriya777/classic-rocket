window.onload = function () {
  (function () {
    console.debug('souriya-slider.js 😎');

    // VARIABLE
    const SLIDE_INTERVAL_MS = 3500;
    const SLIDE_RESIZE_DELAY = 250;
    const SLIDE_MIN = 1;
    const SLIDER_LIST = document.querySelector(".souriya-slider ul");
    if(!SLIDER_LIST) {
      throw new Error('[souriya 😎] slider is not defined in app page builder');
    }

    const SLIDE_MAX = SLIDER_LIST.childElementCount;
    const PREV_BTN = document.querySelector(".souriya-slider .souriya-slider-prev");
    const NEXT_BTN = document.querySelector(".souriya-slider .souriya-slider-next");
    const SLIDER = document.querySelector(".souriya-slider");
    const SLIDER_ITEMS = SLIDER_LIST.children;
    let sliderWidth;
    let currentSlide = 1;
    let slideInterval;
    let timeoutResize = false;

    // FUNCTION
    function infiniteLoop() {
      NEXT_BTN.click();
    }

    function resetInterval() {
      if (slideInterval) {
        clearInterval(slideInterval);
      }
      slideInterval = setInterval(infiniteLoop, SLIDE_INTERVAL_MS);
    }

    function resetSliderWidth() {
      sliderWidth = SLIDER_ITEMS[0].scrollWidth;
      resetInterval();
    }

    function slide(offset) {
      SLIDER_LIST.style.transform = `translateX(-${offset * sliderWidth}px)`;
      resetInterval();
    }

    // EVENT
    PREV_BTN.addEventListener(
      "click",
      function () {
        if (currentSlide === SLIDE_MIN) {
          return;
        }
        currentSlide--;
        slide(currentSlide - 1);
      },
      false
    );

    NEXT_BTN.addEventListener(
      "click",
      function () {
        if (currentSlide === SLIDE_MAX) {
          currentSlide = SLIDE_MIN - 1;
        }
        slide(currentSlide);
        currentSlide++;
      },
      false
    );

    // OBSERVER
    const observer = new IntersectionObserver(function (entries) {
      if (entries[0].isIntersecting === true) {
        resetInterval();
      } else {
        clearInterval(slideInterval);
      }
    }, { threshold: [1] });
    observer.observe(SLIDER);

    // RESIZE EVENT
    window.addEventListener('resize', function() {
     clearTimeout(timeoutResize);
     timeoutResize = setTimeout(resetSliderWidth,SLIDE_RESIZE_DELAY);
    });
    resetSliderWidth();
  })();
};
