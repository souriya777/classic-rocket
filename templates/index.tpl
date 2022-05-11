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
{extends file='page.tpl'}
{block name='pageWrapperClass'}{/block}
{block name='page_content_container'}
    <section id="content" class="page-home">

        <!-- 💎DISCOVER RANGE -->
        <div class="discover-range">
          <h1>DECOUVREZ NOTRE GAMME DE BARNUM PLIANT ALUMINIUM ET ACIER.</h1>
          <p>Tous nos barnums sont faciles et rapides à monter.</p>
          <p>Montage en 60 sec. sans outils et de manière fiable : un vrai jeu d'enfant ;)</p>
        </div>
        <!-- 💎DISCOVER RANGE -->

        <!-- 💎JE DECOUVRE RIGHT -->
        <div class="je-decouvre__right">
          <div class="je-decouvre__right--text">
            <h2>BARNUM GAMME ALUMINIUM</h2>
            <p>Le barnum pliant aluminium 45 & 55 est le produit coup de coeur des professionnels, collectivités et particuliers. Ces barnums pliants séduisent nos clients depuis plus de 10 ans. Qualité, robuste, léger, design et pas cher.</p>
            <p>
              <a href="./24-barnums-aluminium">JE DÉCOUVRE</a>
            </p>
          </div>
          <div class="je-decouvre__right--img">
            <img data-src="./img/souriya/barnum-aluminium-pro-barnum-pas-cher.jpeg" alt="barnum - barnum acier semi pro ts barnum - barnum pas cher" title="" class="img-fluid lazyloaded" src="./img/souriya/barnum-aluminium-pro-barnum-pas-cher.jpeg">
          </div>
        </div>
        <!-- 💎JE DECOUVRE RIGHT -->

        <!-- 💎JE DECOUVRE LEFT -->
        <div class="je-decouvre__left">
          <div class="je-decouvre__left--text">
            <h2>BARNUM GAMME ACIER</h2>
            <p>La gamme de tonnelle acier semi pro, est adressée aux particuliers et professionnels à la recherche d'une tonnelle pliante au meilleur rapport qualité prix. Créez seulement en quelques secondes un espace abrité.
            </p>
            <p>
              <a href="./17-barnums-acier">JE DÉCOUVRE</a>
            </p>
          </div>
          <div class="je-decouvre__left--img">
            <img data-src="./img/souriya/barnum_20-20.jpeg" alt="barnum - barnum acier semi pro ts barnum - barnum pas cher" title="" class="img-fluid lazyloaded" src="./img/souriya/barnum_20-20.jpeg">
          </div>
        </div>
        <!-- 💎JE DECOUVRE LEFT -->

        {block name='page_content_top'}{/block}

        {block name='page_content'}
            {block name='hook_home'}
                {$HOOK_HOME nofilter}
            {/block}

        {/block}
    </section>
{/block}
{block name='page_footer_container'}
    <footer class="page-footer--home">{block name='page_footer'}{/block}</footer>
{/block}
