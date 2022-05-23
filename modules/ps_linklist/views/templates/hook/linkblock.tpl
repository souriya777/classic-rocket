<div class="linkblock">
  {foreach $linkBlocks as $linkBlock}
    <ul>
      {foreach $linkBlock.links as $link}
        <li>
          <a
              id="{$link.id}-{$linkBlock.id}"
              href="{$link.url}"
              title="{$link.description}"
              {if !empty($link.target)} target="{$link.target}" {/if}
          >
            {$link.title}
          </a>
        </li>
        <li>&#47;</li>
      {/foreach}
    </ul>
  {/foreach}
</div>
