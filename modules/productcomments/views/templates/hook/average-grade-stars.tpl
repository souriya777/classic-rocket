{if $nb_comments != 0}
  <div class="comments-note souriya">
    <span>{l s='Grade' d='Modules.Productcomments.Shop'}</span>
    <div class="grade-stars">
      {section name="i" start=0 loop=5 step=1}
          {strip}
            <div class="star">
              <i class="material-icons">
                  {if $average_grade lte $smarty.section.i.index}
                      {* empty *}
                    &#xE83A;
                  {elseif $average_grade gt $smarty.section.i.index && $average_grade lt ($smarty.section.i.index+1)}
                      {* half *}
                    &#xE839;
                  {else}
                      {* full *}
                    &#xE838;
                  {/if}
              </i>
            </div>
          {/strip}
      {/section}
    </div>
  </div>
{/if}
