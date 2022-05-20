{block name='block_social'}
  <!-- 💎NETWORK_SOCIAL -->
  <div class="network__social">
    <p class="network__title">
      SUIVEZ-NOUS
    </p>
    <p class="network__desc">
      Retrouvez toutes nos videos sur notre chaine YouTube et partagez avec nous vos plus belles photos #tsbarnum
    </p>
    <ul class="network__social__list">
      {foreach from=$social_links item='social_link'}
        <li class="network__{$social_link.class}">
          <p>
            <a href="{$social_link.url}" target="_blank" rel="nofollow noopener">{$social_link.label}</a>
          </p>
        </li>
      {/foreach}
    </ul>
  </div>
  <!-- 💎NETWORK_SOCIAL -->
{/block}
