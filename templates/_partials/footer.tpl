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

<section>
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
</section>
