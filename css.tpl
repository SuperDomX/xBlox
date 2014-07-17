<div class="{$method}-blox"> 
	{if $masterKey.is.admin}   
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
	
	<div class="front">
		<a class="action btn btn-warning btn-block">CSS <i class="fa fa-css3"> </i></a>
	{/if}
		<div id="css-source-{$bloxid}" class="content">
			{$blox_cfg.cfg_params}
		</div>
	{if $masterKey.is.admin}
	</div>
 
 	
 	<script src="/bin/js/tinymce/tinymce.min.js"></script>

	<div class="back">
		<!-- Fixed navbar -->
		<div class="navbar navbar-default navbar-fixed-top navbar-inverse" style="z-index: 99;"  role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#"></a>
					</div>
					<div class="navbar-collapse collapse text-center "> 
						<ul class="nav navbar-nav navbar-left">  
							<li class="active">
								<a class="text-success text-center">
								<span class="label label-warning"> 	<i class="fa fa-4x fa-cube fa-spin"></i> <!--  God Mode  --> </span>
								</a>
							</li>
							<li>
								<a class="edit-submit " style="cursor: pointer">
								<span class="label label-success"> <i class="fa fa-globe fa-4x "></i> <!-- Public Mode --> </span>
								</a>
							</li>
						</ul> 
					
						<div class="btn-group" style="margin-top: 10px;">
						<!-- 	<li class="dropdown" ><a href="/x/" class="text text-danger dropdown-toggle" data-toggle="dropdown">
						<img src="{$thumb}src=/bin/images/logos/sdx.png&w=123">
						<strong class=" text text-success">Super</strong><span class="text-primary">Dom</span> 
						<i class="fa fa-caret-down text-info"></i> 
						</a>

						</li> -->
						<button type="submit" class="edit-submit btn btn-success " value="">
						 <!-- <i class="fa fa-gear fa-floppy-o"></i> -->
						 <i class="fa fa-arrow-left"></i> </button> 
						<!-- <button class="btn btn-warning  "><i class="fa fa-image "> Image</i></button>
						<button class="btn btn-warning  "><i class="fa fa-paragraph "> Paragraph</i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button> -->
						

						<button class="btn btn-warning active ">
							<i class="fa fa-gear fa-spin-reverse"></i> <i class="fa fa-html5 "></i> {$method} <i class="fa fa-gear fa-spin"></i> 
						</button>
				         <a   class="btn btn-default active disabled " >
				          	{include file="~blox/clock.tpl"}
				        </a>

			          </div>

			          <div class="nav navbar-nav navbar-right btn-group blox-bar-btns" style="margin-top: 5px;">

							<a class="btn btn-danger btn-lg"  onclick="bloxSwitch(false);"><i class="fa fa-eye-slash"></i></a>
							
							<a class="btn btn-success active disabled btn-lg" onclick="bloxSwitch(true);"><i class="fa fa-eye"></i></a>
			          	
			          </div>

			           
				</div><!--/.nav-collapse -->
			</div> 
		</div> 
		<div class="jumbotron">  
			{include file="../../html/templates/jumbotron.tpl" assign=jumbotron}
			{include file="../../html/templates/3-col.tpl" assign=3col}
			<script type="text/javascript">
				tinymce.init({
				    selector: "#css-source",
				    plugins: [
				        "advlist autolink lists link image charmap print preview hr anchor pagebreak",
				        "searchreplace wordcount visualblocks visualchars code fullscreen",
				        "insertdatetime media nonbreaking save table contextmenu directionality",
				        "emoticons template paste textcolor colorpicker textpattern"
				    ],
					toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
				    toolbar2: "print code html preview media | forecolor backcolor emoticons",
				    image_advtab: true,
				    apply_source_formatting : true,
				    content_css : "//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css,//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css",
					templates: [
					        { title: 'Jumbotron', content: '{$jumbotron|strip}' },
					        { title: '3 Columns', content: '{$3col|strip}' }
					]
				});

				tinymce.xBloxSave = function(t) {
					tinymce.get('css-source').save();
	 				$.ajax({
			    		url 	 : "/{$toBackDoor}/{$Xtra}/{$method}/{$bloxid}/.json",
			    		type     : "POST",	
						data     : $(t).serialize(),
						dataType : "json",
					    success: function(data){ 
							if(data.success){
								$('.{$method}-blox .edit-submit').click();
							}else{
								alert(data.error);
							}
					    }
			    	}); 
			    }
			</script> 
			<form method="post" action="./" onsubmit="tinymce.xBloxSave(this);" >
			    <input name="blox[quest_id]" type="hidden" value="{$bloxid}" /> 
			    <input name="blox[cfg_option]" type="hidden" value="css-source" /> 
			    <textarea id="css-source" name="blox[cfg_params]" style="width:100%" rows="20">
			    	{$blox_cfg.cfg_params}
			    </textarea>  
			</form>
		</div> 
	
    
    <script type="text/javascript">
    //   var editor = new Quill('#editor-container', { 
    //     modules: {
    //       'toolbar': { container: '#formatting-container' },
    //       'image-tooltip': true,
    //       'link-tooltip': true
    //     },
    //     theme : 'snow'
    //   });
    //   editor.on('selection-change', function(range) {
    //     console.log('selection-change', range)
    //   });
    //   editor.on('text-change', function(delta, source) {
    //     console.log('text-change', delta, source)


    //     if(source != 'api'){
	 		// var html = editor.getHTML(); 
	   //      $('#{$method}-html-source').html('');
	   //      $('#{$method}-html-source').html(html);
    //     }else{
    //     	var html = $('#{$method}-html-source').html();
    //     	editor.setHTML(html);
    //     }

        

    //   });

  //     editor.on('text-change', function(delta, source) {
		//   if (source == 'api') {
		//     console.log("An API call triggered this change.");
		//   } else if (source == 'user') {
		//     console.log("A user action triggered this change.");
		//   }
		// });

    </script>
				
	</div>

	<script type="text/javascript">
	  // set up block configuration
	    $('.{$method}-blox .action').click(function(){ 
	      $('.{$method}-blox').addClass('flip');
	      $('.{$method}-blox').parent().addClass('fullscreen-me');
	      
	    });
	    $('.{$method}-blox .edit-submit').click(function(e){ 
	      
			$('.{$method}-blox').removeClass('flip');

			$('.{$method}-blox').parent().removeClass('fullscreen-me'); 

			// why not update that list for fun?
			$('.{$method}-blox .front .content').html(
				tinymce.get('css-source').getContent()
			);
	      
			// $('#o-blox-{$o.blox}-{$o.id}').load('/html/{$o.blox|substr:1|strtolower|replace:'-':'/'}', function  () {
			// });

	      e.preventDefault();
	    });
	</script>
	

	<style type="text/css"> 
		.{$method}-blox {  
			width               : 100%;
			height              : 100%;
			min-width           : 100px;
			min-height          : 100px;
			margin              : 0;
			position          : relative;

			left                : 0;
			top                 : 0;
			font-size           : .8em;
			border              : 0 !important; 
			-webkit-perspective : 600px;
			-moz-perspective    : 600px;
			perspective         : 600px;
	 
	  }
		.fullscreen-me {  		
			z-index  : 9999999999;
			position : absolute;
			width    : 100%;
			height   : 100%;
			margin   : 0;
			padding  : 0;
			top: 0;
			left: 0;
	  }

	  /* -- make sure to declare a default for every property that you want animated -- */
	  /* -- general styles, including Y axis rotation -- */
	.{$method}-blox .front a{
		position           : absolute;
		top                : -55px;  
		left               : 0px;
		/* -- transition is the magic sauce for animation -- */
		-webkit-transition : all .3s linear;
		transition         : all .3s linear;
	}

	.{$method}-blox .front:hover a{
		top: 0px;
		left: 0px;
	}

	.{$method}-blox .front { 
		overflow: hidden;
		float                       : none;
		position                    : absolute;
		top                         : 0;
		left                        : 0;
		z-index                     : 900;
		width                       : inherit;
		height                      : auto;
		/*border                      : 0px solid #ccc;*/
		/*background                  : #6b7077;*/
		/*text-align                  : center;*/
		/*padding-top: 50px;*/
		/*box-shadow                : 0 1px 5px rgba(0,0,0,0.9);*/

		-webkit-transform           : rotateX(0deg) rotateY(0deg);
		-moz-transform              : rotateX(0deg) rotateY(0deg);
		transform                   : rotateX(0deg) rotateY(0deg);

		-webkit-transform-style     : preserve-3d;
		-moz-transform-style        : preserve-3d;
		transform-style             : preserve-3d;

		-webkit-backface-visibility : hidden;
		-moz-backface-visibility    : hidden;
		backface-visibility         : hidden;

		/* -- transition is the magic sauce for animation -- */
		-webkit-transition          : all .4s ease-in-out;
		transition                  : all .4s ease-in-out;
	  }
	  .{$method}-blox.flip .front { 
		z-index           : 900;
		border-color      : #eee;
		background        : #333;
		/*box-shadow      : 0 15px 50px rgba(0,0,0,0.2);*/
		
		-webkit-transform : rotateY(180deg);
		-moz-transform    : rotateY(180deg);
		transform         : rotateY(180deg);
	  }

		.{$method}-blox .back { 
		float                       : none;
		position                    : absolute;
		top                         : 0;
		left                        : 0;
		z-index                     : 800;
		width                       : 100%;
		height                      : 100%; 
		/*background                : #333;*/ 
		
			padding-top: 55px;
		-webkit-transform           : rotateY(-180deg);
		-moz-transform              : rotateY(-179deg); /* setting to 180 causes an unnatural-looking half-flip */
		transform                   : rotateY(-179deg);

		-webkit-transform-style     : preserve-3d;
		-moz-transform-style        : preserve-3d;
		transform-style             : preserve-3d;

		-webkit-backface-visibility : hidden;
		-moz-backface-visibility    : hidden;
		backface-visibility         : hidden;

		/* -- transition is the magic sauce for animation -- */
		-webkit-transition          : all .4s ease-in-out;
		transition                  : all .4s ease-in-out;

	visibility: hidden;
		}

	  .{$method}-blox.flip .back { 
		z-index           : 1000;
		/*background      : #80868d;*/
		 visibility: visible;
		/*padding-top       : 50px;*/
		-webkit-transform : rotateX(0deg) rotateY(0deg);
		-moz-transform    : rotateX(0deg) rotateY(0deg);
		transform         : rotateX(0deg) rotateY(0deg);
		
	background: rgb(255,123,13);
	background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMCUiPgogICAgPHN0b3Agb2Zmc2V0PSI1MCUiIHN0b3AtY29sb3I9IiNmZjdiMGQiIHN0b3Atb3BhY2l0eT0iMSIvPgogICAgPHN0b3Agb2Zmc2V0PSI1MCUiIHN0b3AtY29sb3I9IiNmZmE4NGMiIHN0b3Atb3BhY2l0eT0iMSIvPgogIDwvbGluZWFyR3JhZGllbnQ+CiAgPHJlY3QgeD0iMCIgeT0iMCIgd2lkdGg9IjEiIGhlaWdodD0iMSIgZmlsbD0idXJsKCNncmFkLXVjZ2ctZ2VuZXJhdGVkKSIgLz4KPC9zdmc+);
	background: -moz-linear-gradient(left,  rgba(255,123,13,1) 50%, rgba(255,168,76,1) 50%);
	background: -webkit-gradient(linear, left top, right top, color-stop(50%,rgba(255,123,13,1)), color-stop(50%,rgba(255,168,76,1)));
	background: -webkit-linear-gradient(left,  rgba(255,123,13,1) 50%,rgba(255,168,76,1) 50%);
	background: -o-linear-gradient(left,  rgba(255,123,13,1) 50%,rgba(255,168,76,1) 50%);
	background: -ms-linear-gradient(left,  rgba(255,123,13,1) 50%,rgba(255,168,76,1) 50%);
	background: linear-gradient(to right,  rgba(255,123,13,1) 50%,rgba(255,168,76,1) 50%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ff7b0d', endColorstr='#ffa84c',GradientType=1 );

	  }
	 
	 
	</style>
	<div id="blox{$method}-bloxCodeDialogs" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="windowTitleLabel" aria-hidden="true" style=" height: 85px; overflow: hidden; position: absolute; top: 35%;   background-color : rgba(0,0,0,0.75);">
		<div class=" text-center">
			<a href="#" class="close" data-dismiss="modal">&times;</a>
			<h3 style="color: white;"><a href="#" class="btn btn-danger btn-lg" onclick="closeDialog ();"><i class="fa"></i> On</a></h3>   
		</div> 
	</div>
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

	{/if}



</div>

