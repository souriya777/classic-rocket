{if isset($breadcrumb.links[1])}
<nav data-depth="{$breadcrumb.count}" class="visible--desktop souriya-breadcrumb">
  <div class="container">
    <ol class="breadcrumb">
      {foreach from=$breadcrumb.links item=path name=breadcrumb}
          {block name='breadcrumb_item'}
              {if $smarty.foreach.breadcrumb.last}
                  <li class="breadcrumb-item active">
                      {else}
                  <li class="breadcrumb-item">
                  <a itemprop="item" href="{$path.url}">
              {/if}
              <span itemprop="name">{$path.title}</span>
          {if !$smarty.foreach.breadcrumb.last}
              </a>
          {/if}
              </li>
          {/block}
      {/foreach}
    </ol>
  </div>
</nav>
{/if}
