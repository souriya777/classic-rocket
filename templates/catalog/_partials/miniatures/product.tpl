{block name='product_miniature_item'}
    <article class="product-miniature js-product-miniature" data-id-product="{$product.id_product}" data-id-product-attribute="{$product.id_product_attribute}">
        <div class="card card-product thumbnail-container">

            <div class="card-img-top product__card-img">
                {block name='product_thumbnail'}
                    <a href="{$product.url}" class="thumbnail product-thumbnail rc ratio1_1">
                        {if $product.cover}
                            <img
                                    data-src = "{$product.cover.bySize.large_default.url}"
                                    alt = "{if !empty($product.cover.legend)}{$product.cover.legend}{else}{$product.name|truncate:30:'...'}{/if}"
                                    data-full-size-image-url = "{$product.cover.large.url}"
                                    class="lazyload"
                            >
                        {elseif isset($urls.no_picture_image)}
                            <img class="lazyload" src="{$urls.no_picture_image.bySize.large_default.url}">
                        {else}
                            <img class="lazyload" src="data:image/gif;base64,R0lGODlhAQABAIAAAMLCwgAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==">
                        {/if}
                        {*<span class="souriya-wishlist">
                           {hook h='displayProductActions' product=$product}
                        </span>*}
                    </a>
                {/block}

                {* 💎souriya outofstock *}
                <div class="highlighted-informations text-center p-2{if !$product.main_variants} no-variants{/if} {if $product.availability == 'unavailable'}outofstock--active{/if}">
                    {block name='quick_view'}

                      {* 💎souriya : add to cart *}
                      {if !$configuration.is_catalog}
                        {if $product.availability == 'unavailable'}
                          <span class="outofstock">EN RUPTURE DE STOCK</span>
                        {else}
                          <form action="{$urls.pages.cart}" method="post">
                              <input type="hidden" name="token" value="{$static_token}" />
                              <input type="hidden" value="{$product.id_product}" name="id_product" />
                              <input type="hidden" value="1" name="qty" />
                              <button 
                                data-button-action="add-to-cart"
                                class="btn grid-cart-btn"
                              >
                              {* 💎souriya ajouter au panier *}
                                <svg 
                                  viewBox="0 0 7 7"
                                  fill="none" 
                                  xmlns="http://www.w3.org/2000/svg""
                                >
                                  <path d="M4 3.505V.255h-.5v3.25H.25v.5H3.5v3.25H4v-3.25h3.25v-.5H4z"></path>
                                </svg>
                              </button>
                          </form>
                        {/if}
                      {/if}
                    {/block}

                    {*block name='product_variants'}
                        {if $product.main_variants}
                            {include file='catalog/_partials/variant-links.tpl' variants=$product.main_variants}
                        {/if}
                    {/block*}
                </div>
            </div>
            {* end card-img-top*}

            <div class="card-body">
                <div class="product-description product__card-desc">
                    {block name='product_name'}
                        {if in_array($page.page_name, ['best-sales','category','manufacturer','new-products','prices-drop','product-list','search','supplier'])}
                        <div class="product-title souriya"><a href="{$product.url}">{$product.name|truncate:30:'...'}</a></div>
                        {else}
                            <p class="product-title"><a href="{$product.url}">{$product.name}</a></p>
                        {/if}
                    {/block}
                    {block name='product_reviews'}
                        {hook h='displayProductListReviews' product=$product}
                    {/block}
                    {block name='product_price_and_shipping'}
                        {if $product.show_price}
                            <div class="product-price-and-shipping text-center">
                                {if $product.has_discount}
                                    {hook h='displayProductPriceBlock' product=$product type="old_price"}

                                    <span class="sr-only">{l s='Regular price' d='Shop.Theme.Catalog'}</span>
                                    <span class="regular-price">{$product.regular_price}</span>

                                {/if}

                                {hook h='displayProductPriceBlock' product=$product type="before_price"}

                                <span class="sr-only">{l s='Price' d='Shop.Theme.Catalog'}</span>
                                <span class="price{if $product.has_discount} current-price-discount{/if}">{$product.price}</span>


                                {hook h='displayProductPriceBlock' product=$product type='unit_price'}

                                {hook h='displayProductPriceBlock' product=$product type='weight'}
                            </div>
                        {/if}
                    {/block}


                </div>

            </div>
            {* end card body*}
            {block name='product_flags'}
                <ul class="product-flags">
                    {foreach from=$product.flags item=flag}
                        <li class="product-flag {$flag.type}">{$flag.label}</li>
                    {/foreach}
                    {if $product.has_discount}
                        {if $product.discount_type === 'percentage'}
                            <li class="product-flag discount-percentage discount-product">{$product.discount_percentage}</li>
                        {elseif $product.discount_type === 'amount'}
                            <li class="product-flag discount-amount discount-product">{$product.discount_amount_to_display}</li>
                        {/if}
                    {/if}
                </ul>
            {/block}
        </div>
        {* end card product*}



    </article>
{/block}
