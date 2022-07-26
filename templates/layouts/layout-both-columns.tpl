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
<!doctype html>
<html lang="{$language.iso_code}">

  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body id="{$page.page_name}" class="{$page.body_classes|classnames}">

    {block name='hook_after_body_opening_tag'}
      {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <main>
      {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
      {/block}

      <header id="header" class="l-header">
        {block name='header'}
          {include file='_partials/header.tpl'}
        {/block}
      </header>

      {block name='notifications'}
        {include file='_partials/notifications.tpl'}
      {/block}

      {if $page.page_name == 'index'}
        <section id="souriya-banner">
          <!-- 💎IMAGE HOME -->
          <div class="image-home">
            <img
              data-srcset="/img/souriya/banner-sm-576px.jpg 576w,
                          /img/souriya/banner-md-768px.jpg 768w,
                          /img/souriya/banner-lg-992px.jpg 992w,
                          /img/souriya/banner-xl-1200px.jpg 1200w" 
              data-src="/img/souriya/banner-xl-1200px.jpg"
              data-sizes="(max-width: 576px) 576px,
                          (max-width: 768px) 768px,
                          (max-width: 992px) 992px,
                          (max-width: 1200px) 1200px,"
              alt="barnum pas cher - programme fidélité tente barnum - ts barnum" 
              class="img-fluid lazyloaded lazyload"
            />
          </div>
          <!-- 💎IMAGE HOME -->
        </section>
      {/if}

      {block name='wrapper'}
        <section id="wrapper">
          {hook h="displayWrapperTop"}

          {block name='breadcrumb'}
            {include file='_partials/breadcrumb.tpl'}
          {/block}

          <div class="container">
            <div class="row souriya-pagelist">
              {block name="left_column"}
                <div id="left-column" class="left-column col-12 col-lg-3">
                  <div class="filter-by">FILTRER PAR</div>
                  {if $page.page_name == 'product'}
                    {hook h='displayLeftColumnProduct'}
                  {else}
                    {hook h="displayLeftColumn"}
                  {/if}
                </div>
              {/block}

              {block name="content_wrapper"}
                <div id="content-wrapper" class="center-column{block name='contentWrapperClass'}left-column right-column col-lg-9{/block}">
                  {hook h="displayContentWrapperTop"}
                  {block name="content"}
                    <p>Hello world! This is HTML5 Boilerplate.</p>
                  {/block}
                  {hook h="displayContentWrapperBottom"}
                </div>
              {/block}

              {block name="right_column"}
                <div id="right-column" class="right-column col-12 col-lg-3">
                  {if $page.page_name == 'product'}
                    {hook h='displayRightColumnProduct'}
                  {else}
                    {hook h="displayRightColumn"}
                  {/if}
                </div>
              {/block}
            </div>
          </div>
          {hook h="displayWrapperBottom"}
        </section>
      {/block}

      <section>
        <!-- 💎GARANTIES -->
        <div class="garanties">
          <ul>
            <li>
              <h3>PAIEMENT SÉCURISÉ</h3>
              <div class="garanties__offer">
                <p>Visa, Mastercard, CB ou Paypal.</p>
                <p>Paiement X3 OU X4.</p>
                <p>Virement bancaire.</p>
              </div>
            </li>
            <li>
              <h3>CLICK & COLLECT LIVRAISON RAPIDE</h3>
              <div class="garanties__offer">
                <p>Retrait magasin.</p>
                <p>Livraison offerte à partir de 900€.</p>
              </div>
            </li>
            <li>
              <h3>CHAT</h3>
              <div class="garanties__offer">
                <p>Besoin d&acute;aide rapidement ?</p>
                <p>Notre chat est disponible 7/7.</p>
              </div>
            </li>
            <li>
              <h3>PROGRAMME DE FIDELITÉ</h3>
              <div class="garanties__offer">
                <p>Premier programme de fidélité.</p>
                <p>À chaque achat d&acute;un barnum,</p>
                <p>nous vous récompensons.</p>
              </div>
            </li>
            <li>
              <h3>CLIENTS RAVIS 4.8/5</h3>
              <div class="garanties__offer">
                <p>Vos différents retours nous aident</p>
                <p>à vous proposer un barnum au</p>
                <p>meilleur rapport qualité prix du marché.</p>
              </div>
            </li>
          </ul>
        </div>
        <!-- 💎GARANTIES -->
      </section>

      <section class="souriya-wrapper">
        <!-- 💎IL NOUS FONT CONFIANCE -->
        <div class="trust">
          <h3>ILS NOUS FONT CONFIANCE</h3>
          <p>Nous remercions tous les artisans, restaurateurs et pros de nous faire confiance tous les jours en choississant de travailler avec nos barnums pliants <3.</p>
          <ul class="trust__list">
            <li class="trust__img">
              <img
                data-src="/img/souriya/bordeaux.jpeg"
                alt="bordeaux" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/bordeaux-metropole.jpeg"
                alt="bordeaux métropole" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/camping-campeole.jpeg"
                alt="camping campeole" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/colas.jpeg"
                alt="colas" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/croix-rouge-francaise.jpeg"
                alt="Croix Rouge Française" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/don-du-sang.jpeg"
                alt="don du sang" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/eiffrage-construction.jpeg"
                alt="eiffrage construction" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/ford.jpeg"
                alt="ford" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/france-tv.jpeg"
                alt="france tv" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/maif.jpeg"
                alt="maif" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/mc-donald-s.jpeg"
                alt="mc donald's" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/ministere-des-armees.jpeg"
                alt="Ministère des armées" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/opera-de-lille.jpeg"
                alt="Opéra de Lille" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/tf1.jpeg"
                alt="tf1" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/ts-barnum.jpeg"
                alt="TS BARNUM" 
                class="img-fluid lazyload"
              />
            </li>
            <li class="trust__img">
              <img
                data-src="/img/souriya/don-du-sang.jpeg"
                alt="Ville de FACHES-THUMESNIL" 
                class="img-fluid lazyload"
              />
            </li>
          </ul>
        </div>
        <!-- 💎IL NOUS FONT CONFIANCE -->
      </section>

      <footer id="footer">
        {block name="footer"}
          {include file="_partials/footer.tpl"}
        {/block}
      </footer>

    </main>
    {block name='offcanvas_modals'}
        {* offcanvas search filter *}
        <div class="modal fade" id="offcanvas_search_filter" tabindex="-1" role="dialog" data-modal-hide-mobile>
            <div class="modal-dialog modal-dialog__offcanvas modal-dialog__offcanvas--right" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="_mobile_search_filters_wrapper"></div>
                    </div>
                    <div class="modal-footer">
                    <button class="btn_close-filter btn btn-outline-success btn-block ok" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                        <i class="material-icons rtl-no-flip">&#xE876;</i>
                        {l s='OK' d='Shop.Theme.Actions'}
                    </button>
                    </div>
                </div>
            </div>
        </div>
        {* end search filter *}
        {* offcanvas menu *}
        <div class="modal fade" id="mobile_top_menu_wrapper" tabindex="-1" role="dialog" data-modal-hide-mobile>
            <div class="modal-dialog modal-dialog__offcanvas" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="js-top-menu top-menu-mobile" id="_mobile_top_menu"></div>
                        <div class="js-top-menu-bottom">
                            <div id="_mobile_currency_selector"></div>
                            <div id="_mobile_language_selector"></div>
                            <div id="_mobile_contact_link"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {* end offcanvas menu *}
    {/block}
    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}

    {block name='hook_before_body_closing_tag'}
      {hook h='displayBeforeBodyClosingTag'}
    {/block}
  </body>

</html>
