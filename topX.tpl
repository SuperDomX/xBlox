<div class="list-group">   
    {foreach $qBlox as $q => $blox} 
        {foreach $blox as $b => $x}
        
            {if !$x.backdoor}
            <a href="#" class="list-group-item alert alert-default ">
                 <button type="button" class="close"><i class="fa fa-{$x.icon}"></i> </button>
                     
                    <strong>{$x.blox}</strong> <br/>
                  {$x.desc}
            </a>
            {/if}

        {/foreach}
    {/foreach} 
</div>