{block name='step'}
  <section  id    = "{$identifier}"
            class = "{[
                        'checkout-step'   => true,
                        '-current'        => $step_is_current,
                        '-reachable'      => $step_is_reachable,
                        '-complete'       => $step_is_complete,
                        'js-current-step' => $step_is_current
                    ]|classnames} card"
  >
    <div class="card-header js-checkout-step-header" id="heading-{$identifier}" data-identifier="{$identifier}">
    <h1 class="step-title h3">
      <i class="material-icons rtl-no-flip done text-success">&#xE876;</i>
      <span class="step-number">{$position}</span>
      {$title}

      {if $step_is_reachable}
      <button class="step-edit text-muted btn btn-sm btn-link float-right py-0" data-toggle="collapse" data-target="#content-{$identifier}" aria-expanded="{if $step_is_current}true{else}false{/if}" aria-controls="content-{$identifier}">
        <i class="material-icons edit small">mode_edit</i> {l s='Edit' d='Shop.Theme.Actions'}
      </button>
      {/if}
    </h1>
    </div>
    <div id="content-{$identifier}" class="collapse{if $step_is_current} show{/if}" aria-labelledby="heading-{$identifier}" data-parent="#js-checkout-process">
      <div class="content card-body">
        {block name='step_content'}DUMMY STEP CONTENT{/block}
      </div>
    </div>
  </section>
{/block}
