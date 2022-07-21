<div class="product-variants">
  {foreach from=$groups key=id_attribute_group item=group}
      {if !empty($group.attributes)}
      <div class="form-group product-variants-item">
      {if $group.group_type == 'select'}
          <label for="group_{$id_attribute_group}">{$group.name}</label>
          <div>
          <select
          class="custom-select w-auto"
          id="group_{$id_attribute_group}"
          data-product-attribute="{$id_attribute_group}"
          name="group[{$id_attribute_group}]">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
            <option value="{$id_attribute}" title="{$group_attribute.name}"{if $group_attribute.selected} selected="selected"{/if}>{$group_attribute.name}</option>
          {/foreach}
        </select>
          </div>
      {elseif $group.group_type == 'color'}
          <div class="label">{$group.name}</div>
          <div class="clearfix">
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
              <label class="label-color">
                <input class="input-color d--none" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}"{if $group_attribute.selected} checked="checked"{/if}>
                <span
                  {if $group_attribute.html_color_code && !$group_attribute.texture}class="color" style="background-color: {$group_attribute.html_color_code}" {/if}
                  {if $group_attribute.texture}class="color texture" style="background-image: url({$group_attribute.texture})" {/if}
                ><span class="sr-only">{$group_attribute.name}</span></span>
              </label>
          {/foreach}
          </div>

      {elseif $group.group_type == 'radio'}
          <div class="label">{$group.name}</div>
          {foreach from=$group.attributes key=id_attribute item=group_attribute}
              <div class="custom-control custom-radio">
                <input id="r-variant-{$id_attribute_group}-{$id_attribute}" class="custom-control-input" type="radio" data-product-attribute="{$id_attribute_group}" name="group[{$id_attribute_group}]" value="{$id_attribute}"{if $group_attribute.selected} checked="checked"{/if}>
                <label class="custom-control-label" for="r-variant-{$id_attribute_group}-{$id_attribute}">{$group_attribute.name}</label>
              </div>
          {/foreach}
      {/if}
    </div>
    {/if}
  {/foreach}
</div>
