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

console.log('souriya-product-slider.js 😎');

$('.souriya-product-list.destocking .products').slick({...SLIDER_OPTIONS});
$('.souriya-product-list.prefer .products').slick({...SLIDER_OPTIONS});
$('.souriya-product-list.heart .products').slick({...SLIDER_OPTIONS});
$('.souriya-product-list.advise .products').slick({...SLIDER_OPTIONS, slidesToShow: 3, slidesToScroll: 3});
// $('.souriya-product-list.choosing .products').slick({...SLIDER_OPTIONS});