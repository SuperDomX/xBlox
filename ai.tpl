<!-- Automatically build the html that will talk back to superdom -->
{if $ai.tpl != ''}
	{if $ai.widget == true}
		{include "~widgets/{$ai.tpl}.tpl"}
	{else}
		{include "x{$Xtra|ucfirst}/{$ai.tpl}.tpl"}
	{/if}
{/if}