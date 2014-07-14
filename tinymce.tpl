<div id="tinymce-source-{$bloxid}" class="content">
	{$blox_cfg.cfg_params}
</div>
{if $masterKey.is.admin}   
	{* 
	<!--                     
             77                       77777             
        7 .....                      7.....             
       7........                     ........           
       ...,+++..77   7..........7  7...+++....7         
      ....++++...7 ......:~~...........+++=....7        
     7...~~+++......~~~~~~~~~~~~~......+++~=....        
     7...~~++++..=~~~~~~===~~~~~~~~~..?+++~~~...        
      ...~~~++~~~+++++++++++++++++=~~~~++~~~~...        
      =...~~~~~~++++++++++++++77+++++~~~~~~~...         
        ....~~~++++++++++++++7777+++++~~~~....          
         .....~?++,+++++++++++77?+?++++~.....           
         7....~~+..+++++++++++++++..+++...=7            
         ...~~~=?...++++++++++++....+++~~...            
        ...=~~+++......+++++++.....~+++~~...7           
       7...~~=++++......+++++......++++~~...7           
        ...,~~?++++.....+++++.....++++~~~...            
         ...,~~~~~+++++++++++++++++?~~~~...7            
         7.....~~~~~~~+++++++++~~~~~~~:...=             
           7......~~~~~+++++++~~~~,......7              
            7 .......~~~~++?~~~.......  7               
                  ....~~~~~?++...7                      
                   ....~~~~+++..                        
                   7...~~~+++....                       
                    ...~~~+++?........                  
                    ...=~~++++777++....7                
                    ...~~~++++777+++...                 
                    ...=~~=+++~~~~~~...7                
                    ...~~~=++=~~~~~...                  
                    ...~~~++++........7                 
                    :...~~+++.......                    																										
                    7..........                         
                        .....: 7   
	--> 
	*}
 	<script src="/bin/js/tinymce/tinymce.min.js"></script>
	<script type="text/javascript">
		tinymce.init({
			selector : "#tinymce-source-{$bloxid}",
			inline   : true,
			
		    save_enablewhendirty: true,
		    save_onsavecallback: function() { 
		    	console.log("Saving");
		    	$.ajax({
		    		url 	 : "/{$toBackDoor}/{$Xtra}/{$method}/{$bloxid}/.json",
		    		type     : "POST",	
					data     : {
						blox : {
							quest_id : {$bloxid},
							cfg_option : 'tinymce-source',
							cfg_params : tinymce.get('tinymce-source-{$bloxid}').save()
						} 
					},
					dataType : "json",
				    success: function(data){ 
						if(data.success){
							console.log("Saved");
						}else{
							alert(data.error);
						}
				    }
		    	}); 
		    },
			plugins: [
		        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
		        "searchreplace wordcount visualblocks visualchars code fullscreen",
		        "insertdatetime media nonbreaking save table contextmenu directionality",
		        "emoticons template paste textcolor colorpicker textpattern save"
		    ],
			toolbar: "save | insertfile undo redo | styleselect |  alignleft aligncenter alignright alignjustify  | forecolor backcolor  |  bold italic | bullist numlist outdent indent | link image media | charmap table insertdatetime  | template print code",
		    
		     
		    image_advtab: true,
		    apply_source_formatting : true,
		    content_css : "//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css,//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css",
			templates: [
				{include file="../../html/templates/jumbotron.tpl" assign=jumbotron}
		        { title: 'Jumbotron', content: '{$jumbotron|strip}' },

		        {include file="../../html/templates/3-col.tpl" assign=3col}
		        { title: '3 Columns', content: '{$3col|strip}' },

		        {include file="../../html/templates/cover.tpl" assign=cover}
		        { title: 'Cover', content: '{$cover|strip}' }
			]
		}); 
	</script> 
{/if}