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
          <div class="souriya-l-wrapper">
            <h1>DECOUVREZ NOTRE GAMME DE BARNUM PLIANT ALUMINIUM ET ACIER.</h1>
            <p>Tous nos barnums sont faciles et rapides à monter.</p>
            <p>Montage en 60 sec. sans outils et de manière fiable : un vrai jeu d'enfant ;)</p>
          </div>
        </div>
        <!-- 💎DISCOVER RANGE -->

        <!-- 💎JE DECOUVRE RIGHT -->
        <div class="je-decouvre__right">
          <div class="je-decouvre__right--text">
            <h2>BARNUM GAMME ALUMINIUM</h2>
            <p>Le barnum pliant aluminium 45 & 55 est le produit coup de coeur des professionnels, collectivités et particuliers. Ces barnums pliants séduisent nos clients depuis plus de 10 ans. Qualité, robuste, léger, design et pas cher.</p>
            <a href="./24-barnums-aluminium">
              <p>JE DÉCOUVRE</p>
            </a>
          </div>
          <div class="je-decouvre__right--img">
            <img
              data-srcset="/img/souriya/barnum-aluminium-pro-barnum-pas-cher-sm-576px.jpg 576w,
                          /img/souriya/barnum-aluminium-pro-barnum-pas-cher-md-768px.jpg 768w,
                          /img/souriya/barnum-aluminium-pro-barnum-pas-cher-lg-992px.jpg 992w,
                          /img/souriya/barnum-aluminium-pro-barnum-pas-cher-xl-1200px.jpg 1200w" 
              data-src="/img/souriya/barnum-aluminium-pro-barnum-pas-cher-xl-1200px.jpg"
              data-sizes="(max-width: 576px) 576px,
                          (max-width: 768px) 768px,
                          (max-width: 992px) 992px,
                          (max-width: 1200px) 1200px,"
              alt="barnum - barnum aluminium pro - barnum pas cher" 
              class="img-fluid lazyloaded lazyload"
            />
          </div>
        </div>
        <!-- 💎JE DECOUVRE RIGHT -->

        <!-- 💎JE DECOUVRE LEFT -->
        <div class="je-decouvre__left">
          <div class="je-decouvre__left--text">
            <h2>BARNUM GAMME ACIER</h2>
            <p>La gamme de tonnelle acier semi pro, est adressée aux particuliers et professionnels à la recherche d'une tonnelle pliante au meilleur rapport qualité prix. Créez seulement en quelques secondes un espace abrité.
            </p>
            <a href="./17-barnums-acier">
              <p>JE DÉCOUVRE</p>
            </a>
          </div>
          <div class="je-decouvre__left--img">
            <img
              data-srcset="/img/souriya/barnum_20-20-sm-576px.jpg 576w,
                          /img/souriya/barnum_20-20-md-768px.jpg 768w,
                          /img/souriya/barnum_20-20-lg-992px.jpg 992w,
                          /img/souriya/barnum_20-20-xl-1200px.jpg 1200w" 
              data-src="/img/souriya/barnum_20-20-xl-1200px.jpg"
              data-sizes="(max-width: 576px) 576px,
                          (max-width: 768px) 768px,
                          (max-width: 992px) 992px,
                          (max-width: 1200px) 1200px,"
              alt="barnum - barnum acier semi pro ts barnum - barnum pas cher" 
              class="img-fluid lazyloaded lazyload"
            />
          </div>
        </div>
        <!-- 💎JE DECOUVRE LEFT -->

        {block name='page_content_top'}
        {/block}
    </section>

    <section class="souriya">
        {block name='page_content'}
            {block name='hook_home'}
              {$HOOK_HOME nofilter}
            {/block}
        {/block}

        <!-- 💎QUEL BARNUM POUR MOI -->
        <div class="which-barnum">
          <h2>QUEL BARNUM POUR MOI ?</h2>

          <div class="which-barnum__item-list">
            <div class="which-barnum__item">
              <div class="which-barnum__desc">
                <div class="which-barnum__img">
                  <img src="/img/souriya/quel-barnum-orange.svg" alt="mon barnum orange" class="img-fluid lazyloaded lazyload" />
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
              <a class="which-barnum__button" href="#"><p>En savoir plus</p></a>
            </div>

            <div class="which-barnum__item">
              <div class="which-barnum__desc">
                <div class="which-barnum__img">
                  <img src="/img/souriya/quel-barnum-bleu.svg" alt="mon barnum bleu" class="img-fluid lazyloaded lazyload" />
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
              <a class="which-barnum__button" href="#"><p>En savoir plus</p></a>
            </div>

            <div class="which-barnum__item">
              <div class="which-barnum__desc">
                <div class="which-barnum__img">
                  <img src="/img/souriya/quel-barnum-vert.svg" alt="mon barnum vert" class="img-fluid lazyloaded lazyload" />
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
              <a class="which-barnum__button" href="#"><p>En savoir plus</p></a>
            </div>
          </div>
        </div>
        <!-- 💎QUEL BARNUM POUR MOI -->

        <!-- 💎COMMENT OUVRIR -->
        <div class="how-open">
           <div class="how-open__desc">
            <h2>COMMENT OUVRIR UNE TENTE PLIANTE TSBARNUM ?</h2>
            <p>Découvrez comment monter un barnum TS BARNUM en quelques secondes un vrai jeu d&acute;enfant ;)</p>
            <p>Toutes nos vidéos sur notre chaine YouTube.</p>
          </div>
          <div class="how-open__video">
            <iframe src="https://www.youtube.com/embed/SdQE81GIgrI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
        </div>
        <!-- 💎COMMENT OUVRIR -->

        <!-- 💎NOTRE HISTOIRE -->
        <div class="our-story">
          <div class="our-story__img">
            <img
              data-srcset="/img/souriya/notre-histoire-xs-390px.png 390w,
                          /img/souriya/notre-histoire-sm-576px.png 576w,
                          /img/souriya/notre-histoire-md-768px.png 768w,"
              data-src="/img/souriya/notre-histoire-md-768px.png"
              data-sizes="(max-width: 390px) 390px,
                          (max-width: 576px) 576px,
                          (max-width: 768px) 768px,"
              alt="ts barnum notre histoire" 
              class="img-fluid lazyloaded lazyload"
            />
          </div>
          <div class="our-story__text">
            <h2>NOTRE HISTOIRE</h2>
            <div class="our-story__quality">
              <p>🇫🇷&nbsp;&nbsp;ENTREPRISE FRANÇAISE</p>
            </div>
            <div class="our-story__quality">
              <p>♻️&nbsp;&nbsp;MATÉRIAUX RECYCLÉS</p>
            </div>
            <div class="our-story__quality">
              <p>❤️&nbsp;&nbsp;HUMAINS</p>
            </div>
             <div class="our-story__desc">
              <p>TSBARNUM est une entreprise Française qui a vu le jour en 2006 sous le beau soleil bordelais. Le succès grandissant et fort de sa connaissance du marché, c'est en 2015 que la société installe son siège à Lille.</p>
              <p>Nous accompagnons depuis plus de 10 ans les professionnels dans tous les domaines d&acute;activités.</p>
            </div>
            <a class="our-story__button" href="#">
              <p>Lire la suite</p>
            </a>
          </div>
        </div>
        <!-- 💎NOTRE HISTOIRE -->
    </section>
{/block}
{block name='page_footer_container'}
    <footer class="page-footer--home">{block name='page_footer'}{/block}</footer>
{/block}
