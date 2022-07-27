<!-- 💎souriya ps-featuredproducts -->
<section class="souriya-product-list featured-products">
  <h2>
    {l s='Popular Products' d='Shop.Theme.Catalog'}
  </h2>

  <div class="products">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
</section>
