<!-- 💎NETWORK_NEWSLETTER -->
<div class="network__newsletter">
  <p class="network__title">
    REJOIGNEZ-NOUS
  </p>
  <p class="network__desc">
    Nous envoyons des emails que vous aurez envie de lire & ne ratez pas nos offres VIP.
  </p>
  <div class="network__form {if isset($nw_error) and $nw_error}is-invalid{/if}">
    <form action="{$urls.pages.index}#footer" method="post" class="needs-validation">
      <input type="hidden" name="action" value="0">
      <div class="input-group">
        <input
          name="email"
          class="form-control {if isset($nw_error) and $nw_error}is-invalid{/if}"
          type="email"
          value="{$value}"
          placeholder="Votre email"
          aria-labelledby="block-newsletter-label"
          autocomplete="email"
        >
        <div class="input-group-append">
          <button class="network__submit" type="submit" name="submitNewsletter">&nbsp;</button>
        </div>
      </div>

      <div class="network__form__msg">
          {if $msg}
            <p class="network__form__msg-alert alert {if $nw_error}alert-danger{else}alert-success{/if}">
                {$msg}
            </p>
          {/if}
          {if $conditions}
            <p class="network__form__msg-conditions">{$conditions}</p>
          {/if}
          {if isset($id_module)}
              {hook h='displayGDPRConsent' id_module=$id_module}
          {/if}
      </div>
    </form>
  </div>
</div>
<!-- 💎NETWORK_NEWSLETTER -->
