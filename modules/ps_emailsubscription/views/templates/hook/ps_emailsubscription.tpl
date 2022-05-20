<!-- 💎NETWORK_NEWSLETTER -->
<div class="network__newsletter">
  <p class="network__title">
    REJOIGNEZ-NOUS
  </p>
  <p class="network__desc">
    Nous envoyons des emails que vous aurez envie de lire & ne ratez pas nos offres VIP.
  </p>
  <div class="network__form">
    <form action="{$urls.pages.index}#footer" method="post" class="needs-validation">
      <input type="hidden" name="action" value="0">
      <div class="input-group">
        <input
                name="email"
                class="form-control{if isset($nw_error) and $nw_error} is-invalid{/if}"
                type="email"
                value="{$value}"
                placeholder="Votre email"
                aria-labelledby="block-newsletter-label"
                autocomplete="email"
        >
        <div class="input-group-append">
          <button class="btn btn-primary" type="submit" name="submitNewsletter">FLECHE</button>
        </div>
      </div>

      <div class="network__form__msg">
          {if $msg}
            <p class="alert mt-2 {if $nw_error}alert-danger{else}alert-success{/if}">
                {$msg}
            </p>
          {/if}
          {if $conditions}
            <p class="small mt-2">{$conditions}</p>
          {/if}
          {if isset($id_module)}
              {hook h='displayGDPRConsent' id_module=$id_module}
          {/if}
      </div>
    </form>
  </div>
</div>
<!-- 💎NETWORK_NEWSLETTER -->
