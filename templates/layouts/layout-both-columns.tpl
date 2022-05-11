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

      {block name='image_home'}
        <!-- 💎IMAGE HOME -->
        <div class="image-home">
          <img
            data-srcset="./img/souriya/banner-sm-576px.jpg 576w,
                         ./img/souriya/banner-md-768px.jpg 768w,
                         ./img/souriya/banner-lg-992px.jpg 992w,
                         ./img/souriya/banner-xl-1200px.jpg 1200w" 
            data-src="./img/souriya/banner-xl-1200px.jpg"
            data-sizes="(max-width: 576px) 576px,
                        (max-width: 768px) 768px,
                        (max-width: 992px) 992px,
                        (max-width: 1200px) 1200px,"
            alt="barnum pas cher - programme fidélité tente barnum - ts barnum" 
            class="img-fluid lazyloaded lazyload"
          />
        </div>
        <!-- 💎IMAGE HOME -->
      {/block}

      {block name='wrapper'}
        <section id="wrapper" class="{block name='layoutWrapperClass'}l-wrapper{/block}">
        {hook h="displayWrapperTop"}
          {block name='breadcrumb'}
            {include file='_partials/breadcrumb.tpl'}
          {/block}
            <div class="row">
          {block name="left_column"}
            <div id="left-column" class="left-column col-12 col-lg-3">
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
        {hook h="displayWrapperBottom"}

        {/block}
      </section>

      <section>
        <!-- 💎QUEL BARNUM POUR MOI -->
        <div class="which-barnum">
          <h2>QUEL BARNUM POUR MOI ?</h2>

          <div class="which-barnum__item-list">
            <div class="which-barnum__item">
              <div class="which-barnum__desc">
                <div class="which-barnum__img">
                  <img src="./img/souriya/quel-barnum-orange.png" alt="mon barnum orange" class="class="img-fluid lazyloaded lazyload" />
                  <h3>ACIER 32</h3>
                </div>
                <hr />
                <ul class="which-barnum__features">
                  <li>
                    <p>Usage particulier</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Usage professionnel</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Usage intensif</p><i class="material-icons unchecked">do_not_disturb_on</i>
                  </li>
                  <li>
                    <p>Légèreté</p><i class="material-icons unchecked">do_not_disturb_on</i>
                  </li>
                  <li>
                    <p>Résistance</p><i class="material-icons unchecked">do_not_disturb_on</i>
                  </li>
                  <li>
                    <p>Étanche</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Pièces détachées</p><i class="material-icons checked">check_circle</i>
                  </li>
                </ul>
              </div>
              <p class="which-barnum__price">
                À partir de 135&euro;
              </p>
              <p class="which-barnum__button"><a href="#">En savoir plus</a></p>
            </div>

            <div class="which-barnum__item">
              <div class="which-barnum__desc">
                <div class="which-barnum__img">
                  <img src="./img/souriya/quel-barnum-bleu.png" alt="mon barnum bleu" class="class="img-fluid lazyloaded lazyload" />
                  <div class="which-barnum__best-sellers">best sellers</div>
                  <h3>ALUMINIUM 45</h3>
                </div>
                <hr />
                <ul class="which-barnum__features">
                  <li>
                    <p>Usage particulier</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Usage professionnel</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Usage intensif</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Légèreté</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Résistance</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Étanche</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Pièces détachées</p><i class="material-icons checked">check_circle</i>
                  </li>
                </ul>
              </div>
              <p class="which-barnum__price">
                À partir de 320&euro;
              </p>
              <p class="which-barnum__button"><a href="#">En savoir plus</a></p>
            </div>

            <div class="which-barnum__item">
              <div class="which-barnum__desc">
                <div class="which-barnum__img">
                  <img src="./img/souriya/quel-barnum-vert.png" alt="mon barnum vert" class="class="img-fluid lazyloaded lazyload" />
                  <h3>ALUMINIUM 55</h3>
                </div>
                <hr />
                <ul class="which-barnum__features">
                  <li>
                    <p>Usage particulier</p><i class="material-icons unchecked">do_not_disturb_on</i>
                  </li>
                  <li>
                    <p>Usage professionnel</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Usage intensif</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Légereté</p><i class="material-icons unchecked">do_not_disturb_on</i>
                  </li>
                  <li>
                    <p>Résistance</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Étanche</p><i class="material-icons checked">check_circle</i>
                  </li>
                  <li>
                    <p>Pièces détachées</p><i class="material-icons checked">check_circle</i>
                  </li>
                </ul>
              </div>
              <p class="which-barnum__price">
                À partir de 450&euro;
              </p>
              <p class="which-barnum__button"><a href="#">En savoir plus</a></p>
            </div>
          </div>
        </div>
        <!-- 💎QUEL BARNUM POUR MOI -->
      </section>

      <footer id="footer" class="l-footer">
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
