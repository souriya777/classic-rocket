{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<div>
  <div class="blockcart ps_shoppingcart cart-preview header__rightitem {if $cart.products_count > 0}active{else}inactive{/if}" data-refresh-url="{$refresh_url}">
    <div class="shopping-cart">
      {if $cart.products_count > 0}
        <a rel="nofollow" href="{$cart_url}" class="u-link-body">
      {/if}
      <svg
        xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink"
        version="1.1"
        x="0px"
        y="0px"
        viewBox="50 4 40 40"
        xml:space="preserve"
      >
        <path id="panier" d="M77,11.6c-0.2-4.4-4-7.9-8.6-7.6c-4,0.3-7.1,3.6-7.5,7.6h-8.2v27.5c0,2.7,2.2,5,5,5h22.5c2.8,0,5-2.2,5-5V11.6 H77z M69.5,6.9c2.4,0.2,4.2,2.2,4.5,4.6H64C64.2,8.8,66.6,6.7,69.5,6.9z M82.2,39.1c0,1.1-0.9,2-2,2H57.7c-1.1,0-2-0.9-2-2V14.6H61 v6.9c0,0.8,0.7,1.5,1.5,1.5s1.5-0.7,1.5-1.5v-6.9H74v6.9c0,0.8,0.7,1.5,1.5,1.5s1.5-0.7,1.5-1.5v-6.9h5.2V39.1z"></path>
      </svg>
        {*
        <span class="visible--desktop blockcart__label small">{l s='Cart' d='Shop.Theme.Checkout'}</span>
        *}
        <span class="cart-products-count small blockcart__count">{$cart.products_count}</span>
      {if $cart.products_count > 0}
        </a>
      {/if}
    </div>
  </div>
</div>
