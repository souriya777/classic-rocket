{* CHECK IF PRODUCT HAS VIDEO *}
{if $product.grouped_features}
  {foreach from=$product.grouped_features item=feature}
    {if $feature.name == 'Video'}
      {* 🛑🛑🛑 assignment to VIDEO_ID *}
      {$VIDEO_ID=$feature.value}
    {/if}
  {/foreach}
{/if}

<div class="tabs product-tabs card card-block">
    <ul class="nav nav-tabs" role="tablist">
        {if $product.description}
            <li class="nav-item">
                <a
                        class="nav-link{if $product.description} active{/if}"
                        data-toggle="tab"
                        href="#description"
                        role="tab"
                        aria-controls="description"
                        {if $product.description} aria-selected="true"{/if}>{l s='Description' d='Shop.Theme.Catalog'} 📄</a>
            </li>
        {/if}
        <li class="nav-item">
            <a
                    class="nav-link{if !$product.description} active{/if}"
                    data-toggle="tab"
                    href="#product-details"
                    role="tab"
                    aria-controls="product-details"
                    {if !$product.description} aria-selected="true"{/if}>Détails 🧪</a>
        </li>
        <li class="nav-item">
          <a
            id="avis-link"
            class="nav-link"
            data-toggle="tab"
            href="#avis"
            role="tab"
            aria-controls="avis">Avis ⭐️</a>
        </li>

        {* 💎souriya video *}
        {if $VIDEO_ID}
          <li class="nav-item">
            <a
              class="nav-link"
              data-toggle="tab"
              href="#video"
              role="tab"
              aria-controls="video">Vidéo 🖥️</a>
          </li>
        {/if}
        
        {if $product.attachments}
            <li class="nav-item">
                <a
                        class="nav-link"
                        data-toggle="tab"
                        href="#attachments"
                        role="tab"
                        aria-controls="attachments">{l s='Attachments' d='Shop.Theme.Catalog'}</a>
            </li>
        {/if}
        {foreach from=$product.extraContent item=extra key=extraKey}
            <li class="nav-item">
                <a
                        class="nav-link"
                        data-toggle="tab"
                        href="#extra-{$extraKey}"
                        role="tab"
                        aria-controls="extra-{$extraKey}">{$extra.title}</a>
            </li>
        {/foreach}
    </ul>

    <div class="tab-content" id="tab-content">
        <div class="tab-pane fade{if $product.description} show active{/if}" id="description" role="tabpanel">
            {block name='product_description'}
                <div class="product-description">{$product.description nofilter}</div>
            {/block}
        </div>

        {block name='product_details'}
            {include file='catalog/_partials/product-details.tpl'}
        {/block}

        {* 💎souriya avis *}
        <div
          id="avis"
          class="tab-pane fade"
          role="tabpanel"
        >
            {include file='module:productcomments/views/templates/hook/product-comments-list.tpl'}
        </div>

        {* 💎souriya video *}
        {if $VIDEO_ID}
          <div
            id="video"
            class="tab-pane fade"
            role="tabpanel"
          >
            <iframe width="560" height="315" src="https://www.youtube.com/embed/{$VIDEO_ID}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
        {/if}

        {block name='product_attachments'}
            {if $product.attachments}
                <div class="tab-pane fade" id="attachments" role="tabpanel">
                    <section class="product-attachments">
                        <p class="h4 product__download">{l s='Download' d='Shop.Theme.Actions'}</p>
                        {foreach from=$product.attachments item=attachment}
                            <div class="attachment">
                                <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">{$attachment.name}</a>
                                <p class="small">{$attachment.description}</p>
                                <a href="{url entity='attachment' params=['id_attachment' => $attachment.id_attachment]}">
                                    {l s='Download' d='Shop.Theme.Actions'} ({$attachment.file_size_formatted})
                                </a>
                            </div>
                        {/foreach}
                    </section>
                </div>
            {/if}
        {/block}

        {foreach from=$product.extraContent item=extra key=extraKey}
        <div class="tab-pane fade {$extra.attr.class}" id="extra-{$extraKey}" role="tabpanel" {foreach $extra.attr as $key => $val} {$key}="{$val}"{/foreach}>
        {$extra.content nofilter}
    </div>
    {/foreach}
</div>
</div>