<section>
  <h1>{l s='Our Products' d='Modules.Souriya_DestockingList.Shop'}</h1>
  <div class="products souriya destocking">
    {foreach from=$products item="product"}
      {include file="catalog/_partials/miniatures/product.tpl" product=$product}
    {/foreach}
  </div>
  <a href="{$allProductsLink}">{l s='All products' d='Modules.Souriya_DestockingList.Shop'}</a>
</section>
