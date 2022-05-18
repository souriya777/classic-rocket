import $ from 'jquery';

const SLIDER_OPTIONS = {
  infinite: true,
  slidesToShow: 4,
  slidesToScroll: 4,
  responsive: [
    {
      breakpoint: 1024,
      settings: {
        slidesToShow: 3,
        slidesToScroll: 3,
      }
    },
    {
      breakpoint: 768,
      settings: {
        slidesToShow: 2,
        slidesToScroll: 2
      }
    },
    {
      breakpoint: 589,
      settings: {
        slidesToShow: 1,
        slidesToScroll: 1
      }
    }
  ]
}

$('.products.destocking').slick({...SLIDER_OPTIONS});
$('.products.prefer').slick({...SLIDER_OPTIONS});
$('.products.heart').slick({...SLIDER_OPTIONS});