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
<!-- 💎NETWORK -->
<div class="network">
  <div class="network__content">
    {block name='hook_footer_before'}
      {hook h='displayFooterBefore'}
    {/block}
  </div>
</div>
<!-- 💎NETWORK -->
<div class="souriya-footer">
  <div class="row">
    {block name='hook_footer'}
      {hook h='displayFooter'}
    {/block}

    {block name='hook_footer_after'}
      {hook h='displayFooterAfter'}
    {/block}

    <div class="copyright">
      <div class="copyright__img">
        <img
          data-src="/img/souriya/pictogramme-tsbarnum.svg"
          alt="logo tente barnum ts barnum et tonnelle" 
          class="img-fluid lazyload"
        />
      </div>
      <div class="copyright__when">
        © TENTE BARNUM TS - <span class="copyright__date">2006 - {$smarty.now|date_format:"%Y"}</span>
      </div>
      <div class="copyright__what">
        TS BARNUM est une entreprise Française basée dans le Nord. Tonnelle et barnum pour particuliers, professionnels et collectivités.
      </div>
    </div>

    <p class="made-with">
      {block name='copyright_link'}
        Made with <span class="heart">♥</span> by 
        <a class="_blank" href="https://klapomme.fr/" target="_blank" rel="nofollow">cercle noir</a>
      {/block}
    </p>
  </div>
</div>
