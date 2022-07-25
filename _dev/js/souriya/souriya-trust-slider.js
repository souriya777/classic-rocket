import $ from 'jquery';

const SLIDER_OPTIONS = {
  infinite: true,
  slidesToShow: 6,
  slidesToScroll: 6,
  autoplay: true,
  autoplaySpeed: 3000,
  responsive: [
    {
      breakpoint: 1361,
      settings: {
        slidesToShow: 5,
        slidesToScroll: 5,
      }
    },
    {
      breakpoint: 929,
      settings: {
        slidesToShow: 4,
        slidesToScroll: 4,
      }
    },
    {
      breakpoint: 660,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3
      }
    },
    {
      breakpoint: 589,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 499,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
}

console.log('souriya-trust-slider.js 😎');

$('.trust__list').slick({...SLIDER_OPTIONS});