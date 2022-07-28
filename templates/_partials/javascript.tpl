{foreach $javascript.external as $js}
  <script type="text/javascript" src="{$js.uri}" {$js.attribute}></script>
{/foreach}

{foreach $javascript.inline as $js}
  <script type="text/javascript">
    {$js.content nofilter}
  </script>
{/foreach}

{if isset($vars) && $vars|@count}
  <script type="text/javascript">
    {foreach from=$vars key=var_name item=var_value}
    var {$var_name} = {$var_value|json_encode nofilter};
    {/foreach}
  </script>
{/if}


{* FIXME include INTENSE ??? *}
{*if $page.page_name == 'product'}
  <script src='https://cdnjs.cloudflare.com/ajax/libs/intense-images/1.0.7/intense.min.js'></script>
{/if*}
{*<script src="http://afarkas.github.io/lazysizes/lazysizes.min.js" async=""></script>*}