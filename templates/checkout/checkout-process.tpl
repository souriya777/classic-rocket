<div class="checkout-process">
  <div class="checkout-process__breadcrumb">
    <ul>
      {foreach from=$steps item="step" key="index"}
        <li style="background-color: #4CAF50;"><i class="material-icons rtl-no-flip done"></i></li>
        <li class="{if $step.isCurrent == 1}checkout-process__breadcrumb--active{/if}">
          <div class="checkout-process__breadcrumb-number">{$index + 1}</div>
          <div class="checkout-process__breadcrumb-title">
            {if $index == 0}
              INFORMATIONS PERSONNELLES
            {elseif $index == 1}
              MON ADRESSE
            {elseif $index == 2}
              SÉLECTIONNER UN MODE LIVRAISON
            {else}
              PAIEMENT
            {/if}
          </div>
        </li>
      {/foreach}
    </ul>
  </div>

  <div class="checkout-process__panel">
    {foreach from=$steps item="step" key="index"}
      {render identifier  =  $step.identifier
              position    =  ($index + 1)
              ui          =  $step.ui
      }
    {/foreach}
  </div>

  {* 💎souriya continue-shopping *}
  {include file='checkout/_partials/continue-shopping.tpl' cart=$cart}
</div>