<section>
  <h1>{l s='Our Products' d='Modules.Souriya_PreferList.Shop'}</h1>
  <div class="products souriya prefer">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
  <a href="{$allProductsLink}">{l s='All products' d='Modules.Souriya_PreferList.Shop'}</a>
</section>
