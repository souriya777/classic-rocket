<div class="user-info ps_customersignin header__rightitem">
  {if $logged}
    <a
      class="account u-link-body"
      href="{$my_account_url}"
      title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
      rel="nofollow"
    >
          <span>
            <i class="material-icons logged">&#xE7FF;</i>
          </span>
      <span class="visible--desktop small">{$customerName}</span>
    </a>
  {else}
    <a
      href="{$my_account_url}"
      class="u-link-body"
      title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
      rel="nofollow"
    >
      <span>
        <img src="./img/souriya/mon-compte-ts-barnum.svg" alt="mon compte" class="class="img-fluid lazyloaded lazyload" />
      </span>
      {*
      <span class="visible--desktop small">{l s='Sign in' d='Shop.Theme.Actions'}</span>
      *}
    </a>
  {/if}
</div>
