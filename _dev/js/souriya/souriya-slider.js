window.addEventListener('load', function () {
  (function () {
    console.log('souriya-slider.js 😎');

    // VARIABLES
    const SLIDE_INTERVAL_MS = 3500;
    const SLIDE_RESIZE_DELAY = 250;
    const SLIDE_MIN = 1;
    const SLIDER_LIST = document.querySelector(".souriya-slider ul");
    if (!SLIDER_LIST) {
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
    let windowEventListener;
    let timeoutResize = false;

    // FUNCTIONS
    function infiniteLoop() {
      NEXT_BTN.click();
    }

    function resetSlideInterval() {
      if (slideInterval) {
        clearInterval(slideInterval);
      }
      slideInterval = setInterval(infiniteLoop, SLIDE_INTERVAL_MS);
    }

    function resetResizeEventListener() {
      if (windowEventListener) {
        window.removeEventListener('resize', handleResizeEvent);
      }
      windowEventListener = window.addEventListener('resize', handleResizeEvent);
    }

    function resetSliderWidth() {
      sliderWidth = SLIDER_ITEMS[0].scrollWidth;
      resetSlideInterval();
    }

    function handleResizeEvent() {
      clearTimeout(timeoutResize);
      timeoutResize = setTimeout(resetSliderWidth, SLIDE_RESIZE_DELAY);
    }

    function slide(offset) {
      SLIDER_LIST.style.transform = `translateX(-${offset * sliderWidth}px)`;
      resetSlideInterval();
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
        resetSlideInterval();
        resetResizeEventListener();
      } else {
        clearInterval(slideInterval);
        window.removeEventListener('resize', handleResizeEvent);
      }
    }, { threshold: [1] });
    observer.observe(SLIDER);

    resetSliderWidth();
  })();
});
