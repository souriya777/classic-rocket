import $ from 'jquery';

const SLIDER_OPTIONS = {
  infinite: true,
  slidesToShow: 6,
  slidesToScroll: 6,
  autoplay: true,
  autoplaySpeed: 3000,
  responsive: [
    {
      breakpoint: 915,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 5,
      }
    },
    {
      breakpoint: 588,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 4,
      }
    },
    {
      breakpoint: 450,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3
      }
    },
    {
      breakpoint: 339,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
  ]
}

console.log('souriya-trust-slider.js 😎');

$('.trust__list').slick({...SLIDER_OPTIONS});