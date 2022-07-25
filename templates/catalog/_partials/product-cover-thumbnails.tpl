<div class="images-container souriya-images-container">
  {block name='product_cover'}
    <!-- 💎 souriya zara slider -->
    <div class="zara-slider">
      <div class="zara-slider__images">
        <ul>
          {foreach from=$product.images item=image name="images"}
            <li>
              {if $image.id_image != $product.default_image.id_image}
                <img
                  class="img-fluid lazyload"
                  {if !$smarty.foreach.images.first && !$product.default_image}data-sizes="auto"{/if}
                  {if !$smarty.foreach.images.first && !$product.default_image}data-{/if}srcset="{$image.bySize.medium_default.url} 452w,
                  {$image.bySize.pdt_180.url} 180w,
                  {$image.bySize.pdt_300.url} 300w,
                  {$image.bySize.pdt_360.url} 360w,
                  {$image.bySize.pdt_540.url} 540w"
                  {if !$smarty.foreach.images.first && !$product.default_image}data-{/if}src="{$image.bySize.medium_default.url}"
                  alt="{$image.legend}"
                  title="{$image.legend}"
                />
                <noscript>
                  <img class="img-fluid" src="{$image.bySize.medium_default.url}" alt="{$image.legend}">
                </noscript>
              {/if}
            </li>
          {/foreach}
        </ul>
      </div>
      {if $product.images|count > 1}
        <div class="zara-slider__progress">
          <div class="zara-slider__progress-bar"></div>
        </div>
        <ul class="zara-slider__thumbnails">
          {block name='product_images'}
              {foreach from=$product.images item=image}
                {if $image.id_image != $product.default_image.id_image}
                  <li>
                    <button class="zara-slider__thumbnails-button" data-slide-number="{$image@iteration}">
                      <img
                        class="lazyload img-fluid"
                        data-src="{$image.bySize.small_default.url}"
                        alt="{$image.legend}"
                        title="{$image.legend}"
                      />
                    </button>
                  </li>
                {/if}
              {/foreach}
          {/block}
        </ul>
      {/if}
    </div>
    <!-- 💎 souriya zara slider -->
  {/block}

  {hook h='displayAfterProductThumbs'}
</div>
