<div class="{$method}-blox-{$bloxid}"> 
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
	{include file="~blox/clock.tpl" assign=clock} 
	
	<div class="front">
		<a class="action btn btn-lg btn-info btn-block"><i class="fa fa-gear fa-spin"></i> <i class="fa fa-forward"> <i class="fa fa-gear fa-spin-reverse"></i> </i> </a>
	{/if}
		<div id="mesh-source-{$bloxid}" class="content"> 
			<style type="text/css">
				{$blox_cfg.css}
			</style>

			{$blox_cfg.html}

			<script type="text/javascript">
				{$blox_cfg.js}
			</script> 
		</div>
	{if $masterKey.is.admin}
	</div>
 
 	
 	<script src="/bin/js/tinymce/tinymce.min.js"></script>

	<div class="back" style="overflow: hidden;">
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
					


						<div class="btn-group" style="margin-top: 5px;">
						<!-- 	<li class="dropdown" ><a href="/x/" class="text text-danger dropdown-toggle" data-toggle="dropdown">
						<img src="{$thumb}src=/bin/images/logos/sdx.png&w=123">
						<strong class=" text text-success">Super</strong><span class="text-primary">Dom</span> 
						<i class="fa fa-caret-down text-info"></i> 
						</a>

						</li> -->

						 <!-- {foreach $timestamps as $time => $stamp}
	                             	<li role="presentation">
		                                <a href="#" onclick="window.meshTimeLoad('{$stamp.cfg_timestamp}')" class="message">
		                                    {$stamp.cfg_timestamp|date_format:"%B, %a %e, %I:%M:(%S) %p"}
		                                </a> 
		                            </li>
	                             {/foreach} -->
	                     

	                    

						<button type="submit" class="btn btn-success btn-lg active" value="">
	                    	<i class="fa fa-play"></i>
						</button> 

						<button class="btn btn-info btn-lg" id="{$method}-blox-{$bloxid}-fast-backward" onclick="window.meshette.loadTrack('{$tracks.first}')" >
							<i class="fa fa-fast-backward"></i> 
						</button>

						<button class="btn btn-info btn-lg" id="{$method}-blox-{$bloxid}-backward" onclick="window.meshette.backward();"  >
							<i class="fa fa-backward"></i> 
						</button>
						
	                    
						 <div class="btn-group">
						 	<a  href="#" title="Messages" class="btn btn-default btn-lg" id ="{$method}-blox-{$bloxid}-track" data-toggle="dropdown" >
								<i class="fa fa-gear fa-spin"></i> 
								{$clock}
								<i class="fa fa-gear fa-spin-reverse"></i>
					        </a>

	                        <ul class="dropdown-menu versions" role="menu">
	                        	<li class="dropdown-header"> <i class="fa fa-backward"></i>
	                        	Version History <i class="fa fa-code"></i></li>
	                        	<li class="divider"></li>
	                        	{foreach $versions as $year => $months}
	                             	{if $year != ''}
	                             		<li class="dropdown-leftsubmenu" >
			                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">  
			                                <i class="fa fa-calendar-o"></i> {$year}
			                                </a> 
			                                <ul class="dropdown-menu">
		                                    	<li class="dropdown-header"> <i class="fa fa-calendar-o"></i>
                        						Year {$year} <i class="fa fa-moon-o"></i></li>
                        						<li class="divider"></li>
			                                    {foreach $months as $month => $days} 
					                             	{if $month != ''} 
						                             	<li class="dropdown-leftsubmenu">
							                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
							                                <i class="fa fa-moon-o"></i> {$month} 
							                                </a> 
							                                <ul class="dropdown-menu">
							                                <li class="dropdown-header"> <i class="fa fa-moon-o"></i>
			                        						Month of {$month} <i class="fa fa-sun-o"></i></li>
			                        						<li class="divider"></li>
						                                    {foreach $days as $day => $hours}
								                             	<li class="dropdown-leftsubmenu">
									                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" > 
									                                <i class="fa fa-sun-o"></i>    {$day} 
									                                </a> 
									                                <ul  class="dropdown-menu">
									                                	<li class="dropdown-header"> <i class="fa fa-sun-o"></i>
						                        						{$day} <i class="fa fa-clock-o"></i></li>
						                        						<li class="divider"></li>
								                                    	{foreach $hours as $hour => $mintues}

								                                    		 {if $hour > 11}
											                                 	{assign var="rotate" value="90"}
											                                 {elseif $hour > 8}
											                                 	{assign var="rotate" value="45"}
											                                 {elseif $hour > 5}
											                                 	{assign var="rotate" value="270"}
											                                 {elseif $hour > 2}
											                                 	{assign var="rotate" value="180"}
											                                 {/if}

										                             	<li class="dropdown-leftsubmenu" role="presentation">
											                                <a href="#" class="dropdown-toggle" data-toggle="dropdown"> 
											                                 <i class="fa fa-clock-o fa-rotate-{$rotate}"></i> {$hour|replace:'_':"'oClock"} 
											                                    
											                                </a> 
											                                <ul  class="dropdown-menu">
											                                	<li class="dropdown-header"> <i class="fa fa-clock-o fa-rotate-{$rotate}"></i>
			                        						  					{$hour|replace:'_':": 00"}
			                        						  					<i class="fa fa-bookmark-o"></i></li>
										                                    	{foreach $mintues as $min => $seconds}
												                             	<li class="dropdown-leftsubmenu" >
													                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" >
													                                 <i class="fa fa-bookmark-o"></i>  {$min} 
													                                </a> 
													                                <ul class="dropdown-menu">
													                                	<li class="dropdown-header"> <i class="fa fa-bookmark-o"></i>
					                        						  					{$min} 
					                        						  					<i class="fa fa-history fa-rotate-{$rotate}"></i></li>
												                                   		 {foreach $seconds as $sec => $v}
															                             	<li >
																                                <a href="#" onclick="window.meshette.loadTrack('{$v}');"  >
																                                     <i class="fa fa-crosshairs fa-spin-reverse"></i>
																                                    {$sec}
																                                </a> 
																                            </li>
														                            {/foreach}
												                                   	</ul>
													                            </li>
												                            {/foreach}
										                                    </ul>
											                            </li>
										                            {/foreach}
								                                    </ul>
									                            </li>
								                            {/foreach}
								                            </ul>
							                            </li>
					                             	{/if}
					                            {/foreach}
				                            </ul>
			                            </li>
	                             	{/if}
	                             {/foreach} 
	                        </ul>
	                    </div>

						<button class="btn btn-info btn-lg active disabled" id="{$method}-blox-{$bloxid}-fast-forward" onclick="window.meshette.forward();" >
							<i class="fa fa-forward"></i> 
						</button> 

						<button class="btn btn-info btn-lg active disabled" id="{$method}-blox-{$bloxid}-forward" onclick="window.meshette.loadTrack('{$tracks.last}')">
							<i class="fa fa-fast-forward"></i> 
						</button> 
	                    
						


				        
						
						 
						<!-- <button class="btn btn-warning  "><i class="fa fa-image "> Image</i></button>
						<button class="btn btn-warning  "><i class="fa fa-paragraph "> Paragraph</i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button> -->
						
				        
						
						
	                     
						
						
						<button class="btn btn-warning btn-lg " onclick="window.meshReset();">
							<i class="fa fa-eject "></i> 
						</button>

						<button class="btn btn-danger btn-lg edit-submit " >
							     <i class="fa fa-circle "></i>  
						</button>
						

			          </div>

			          <div class="nav navbar-nav navbar-right btn-group blox-bar-btns" style="margin-top: 5px;">

							<!-- <a class="btn btn-primary btn-lg"  onclick="bloxSwitch(false);"><i class="fa fa-user-md"></i></a> -->
							<a class="btn btn-primary btn-lg"  onclick="bloxSwitch(false);"><i class="fa fa-medkit"></i></a>
							
							<!-- <a class="btn btn-success active disabled btn-lg" onclick="bloxSwitch(true);"><i class="fa fa-eye"></i></a> -->
				          	<div class="btn-group ">
		                        <a href="#" title="Messages" id="messages" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown">
		                            <i class="fa fa-user-md "></i> <span class="count badge">80%</span>
		                        </a>
		                        <ul id="messages-menu" class="dropdown-menu messages" role="menu">
		                        	<li class="dropdown-header"> <i class="fa fa-cube"></i> Blox Stats <i class="fa fa-bar-chart-o"></i></li>
		                        	<li class="divider"></li>
		                            <li role="presentation">
		                                <a href="#" class="message">
		                                    <div class="row">
		                                    	<table width="100%">
		                                    		<tr>
		                                    			<td>
		                                    				
		                                    				<div class="progress"> 
										                       <div class="pull-left progress-bar progress-bar-striped active progress-bar-danger" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
										                            90% HP
										                       </div>  
										                    </div>

		                                    			</td>
		                                    			<td width="16px"> 
			                                    	 		<i class="fa   fa-heart"></i>
		                                    			</td>
		                                    		</tr>
		                                    	</table> 
		                                    </div>
		                                </a>
		                            </li>
		                            <li role="presentation">
		                                <a href="#" class="message">
		                                    <div class="row">
			                                    <table width="100%">
		                                    		<tr>
		                                    			<td>
		                                    				
		                                    				<div  >
						                                        <div class="progress"> 
											                       <div class="pull-left progress-bar progress-bar-striped progress-bar-info active " role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											                            60% EP 
											                       </div>  
											                    </div>
						                                    </div>

		                                    			</td>
		                                    			<td width="16px"> 
			                                    	 		<i class="fa   fa-envelope"></i>
		                                    			</td>
		                                    		</tr>
		                                    	</table> 
		                                    </div>
		                                </a>
		                            </li>
		                            <li role="presentation">
		                                <a href="#" class="message">
		                                    <div class="row">
			                                    <table width="100%">
		                                    		<tr>
		                                    			<td>
		                                    				
		                                    				<div  >
						                                        <div class="progress"> 
											                       <div class="pull-left progress-bar progress-bar-striped active progress-bar-success" role="progressbar" aria-valuenow="97" aria-valuemin="0" aria-valuemax="100" style="width: 97%;">
											                             97% MP  
											                       </div>  
											                    </div>
						                                    </div>

		                                    			</td>
		                                    			<td width="16px"> 
			                                    	 		<i class="fa   fa-magic"></i>
		                                    			</td>
		                                    		</tr>
		                                    	</table> 
	                                    	</div> 
		                                    
		                                </a>
		                            </li>
		                            <li role="presentation">
		                                <a href="#" class="message">
		                                    <div class="row">
			                                    <table width="100%">
		                                    		<tr>
		                                    			<td>
		                                    				
		                                    				<div  >
						                                        <div class="progress"> 
											                       <div class="pull-left progress-bar progress-bar-striped active progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;">
											                            60% SP
											                       </div>  
											                    </div>
						                                    </div>

		                                    			</td>
		                                    			<td width="16px"> 
			                                    	 		<i class="fa   fa-star"></i>
		                                    			</td>
		                                    		</tr>
		                                    	</table>  
	                                    	</div>
		                                    
		                                </a>
		                            </li>
		                            <li role="presentation">
		                                <a href="/x/analytics" class="text-align-center see-all">
		                                     <i class="fa fa-stethoscope"></i> See all Vitals <i class="fa fa-arrow-right"></i>
		                                </a>
		                            </li>
		                        </ul>
		                    </div>
			          </div>

			           
				</div><!--/.nav-collapse -->
			</div> 
		</div>  
		<iframe id="mesh-code-editor" width="100%" height="100%" border="0" style="border: 0; overflow: hidden;" src="about:blank" > 
		</iframe> 
	</div>

	<script type="text/javascript">
	  // set up block configuration
	    $('.{$method}-blox-{$bloxid} .action').click(function(){ 
	      $('.{$method}-blox-{$bloxid}').addClass('flip');
	      $('.{$method}-blox-{$bloxid}').parent().addClass('fullscreen-me');


	      $('#mesh-code-editor').on('load', window.meshOnLoad);

	      $('#mesh-code-editor').attr({
	      		src : '/{$toBackDoor}/{$suite}/x{$Xtra|ucfirst}/mesh-code-editor/index.html'
	      });


	    });



	    window.meshette = {
	    	trac_num : [{foreach $timestamps as $r => $c}'{$c.cfg_timestamp}',{/foreach}],
	    	tracks : {
	    		{foreach $timestamps as $r => $c}'{$c.cfg_timestamp}' : {$r},{/foreach}
	    	}, 
	    	first : '{$tracks.first}',
	    	last : '{$tracks.last}',
	    	//timestamps : {$timestamps},
	    	loadTrack : function(time) {
	    		this.playing = this.tracks[time];
	     		// alert(time);
		    	$.ajax({
		    		url 	 : "/{$toBackDoor}/{$Xtra}/{$method}/{$bloxid}/"+ time+ "/.json",
		    		type     : "GET",	 
					dataType : "json",
				    success: function(data){ 
				    	DATA = data;
						if(data.success){
							console.log("Loaded "+ time + " | Track #:"+ window.meshette.playing);
							var i = $('#mesh-code-editor')[0].contentWindow;
					    	var html   =	i.htmlBox.setValue(data.html);
					    	var css    =	i.cssBox.setValue(data.css);
					    	var js     =	i.jsBox.setValue(data.js);
						}else{
							alert(data.error);
						}
				    }
		    	});

		    	var b = '#{$method}-blox-{$bloxid}-';

		    	var btn = {
					ff : $(b+'fast-forward'), 
					fb : $(b+'fast-backward'),
					f  : $(b+ 'forward'),
					b  : $(b+'backward'),
					p : $(b+'track'),
					on : function (btn) {
						// body...
						btn.removeClass('disabled');
						btn.removeClass('active');
					},
					off : function(btn){
						btn.addClass('disabled');
						btn.addClass('active');
					}
		    	}

		    	clock.setClock(time);

		    	switch(this.playing){
		    		case(this.tracks[this.first]):
		    			btn.off(btn.fb);
		    			btn.off(btn.b);
		    			btn.on(btn.ff);
		    			btn.on(btn.f);
		    		break;
		    		case(this.tracks[this.last]):
		    			btn.on(btn.fb);
		    			btn.on(btn.b);
		    			btn.off(btn.ff);
		    			btn.off(btn.f);
		    		break;
		    		default: 
		    			btn.on(btn.fb);
		    			btn.on(btn.b);
		    			btn.on(btn.ff);
		    			btn.on(btn.f);
		    		break;
		    	}
		    },
		    playing : 0,
	    	backward : function  () { 
	    		this.playing++; 
	    		if(this.playing <= (this.trac_num.length-1) ){ 
	    			this.loadTrack(this.trac_num[this.playing]); 
	    		} 
	    	},
	    	forward : function  () {
	    		this.playing--; 
	    		if(this.playing >= 0 ){ 
	    			this.loadTrack(this.trac_num[this.playing]); 
	    		}
	    	},
	    	eject : function () { 
		    	$('.{$method}-blox-{$bloxid}').removeClass('flip');
				$('.{$method}-blox-{$bloxid}').parent().removeClass('fullscreen-me');  
	    	}

	    };

	    window.meshReset = function  () {
	    	$('.{$method}-blox-{$bloxid}').removeClass('flip');
			$('.{$method}-blox-{$bloxid}').parent().removeClass('fullscreen-me');  
	    }

	    window.meshOnLoad = function  () {
	    	$.ajax({
	    		url 	 : "/{$toBackDoor}/{$Xtra}/{$method}/{$bloxid}/.json",
	    		type     : "GET",	 
				dataType : "json",
			    success: function(data){ 
					if(data.success){
						console.log("Init Load");
						var i = $('#mesh-code-editor')[0].contentWindow;
				    	var html   =	i.htmlBox.setValue(data.html);
				    	var css    =	i.cssBox.setValue(data.css);
				    	var js     =	i.jsBox.setValue(data.js);
					}else{
						alert(data.error);
					}
			    }
	    	}); 
	    }

	     window.meshTimeLoad = function  (time) {
	     		// alert(time);
	    	$.ajax({
	    		url 	 : "/{$toBackDoor}/{$Xtra}/{$method}/{$bloxid}/"+ time+ "/.json",
	    		type     : "GET",	 
				dataType : "json",
			    success: function(data){ 
			    	DATA = data;
					if(data.success){
						console.log("Loaded");
						var i = $('#mesh-code-editor')[0].contentWindow;
				    	var html   =	i.htmlBox.setValue(data.html);
				    	var css    =	i.cssBox.setValue(data.css);
				    	var js     =	i.jsBox.setValue(data.js);
					}else{
						alert(data.error);
					}
			    }
	    	}); 
	    }


	    $('.{$method}-blox-{$bloxid} .edit-submit').click(function(e){ 

	    	var content = $('.{$method}-blox-{$bloxid} .front .content');

	    	var i = $('#mesh-code-editor')[0].contentWindow;
	    	var html   =	i.htmlBox.getValue();
	    	var css    =	i.cssBox.getValue();
	    	var js     =	i.jsBox.getValue();

	    	var s = document.createElement('script');
	    	s.innerHTML = js;

	    	var c = document.createElement('style');
	    	c.innerHTML = css;

			content.html(html);
			content.append(c);
			content.append(s);

			$('.{$method}-blox-{$bloxid}').removeClass('flip');
			$('.{$method}-blox-{$bloxid}').parent().removeClass('fullscreen-me'); 

			$.ajax({
	    		url 	 : "/{$toBackDoor}/{$Xtra}/save/{$bloxid}/.json",
	    		type     : "POST",	
				data     : {
					blox : {
						js : {
							quest_id : {$bloxid},
							cfg_option : 'js-source',
							cfg_params : js
						},
						css : {
							quest_id : {$bloxid},
							cfg_option : 'css-source',
							cfg_params : css
						},
						html : {
							quest_id : {$bloxid},
							cfg_option : 'html-source',
							cfg_params : html
						}
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

	      	e.preventDefault();
	    });
	</script>
	

	<style type="text/css"> 
		.{$method}-blox-{$bloxid} {  
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
	.{$method}-blox-{$bloxid} .front a{
		position           : absolute;
		top                : -55px;  
		left               : 0px;
		/* -- transition is the magic sauce for animation -- */
		-webkit-transition : all .3s linear;
		transition         : all .3s linear;
	}

	.{$method}-blox-{$bloxid} .front:hover a{
		top: 0px;
		left: 0px;
	}

	.{$method}-blox-{$bloxid} .front { 
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
	  .{$method}-blox-{$bloxid}.flip .front { 
		z-index           : 900;
		border-color      : #eee;
		background        : #333;
		/*box-shadow      : 0 15px 50px rgba(0,0,0,0.2);*/
		
		-webkit-transform : rotateY(180deg);
		-moz-transform    : rotateY(180deg);
		transform         : rotateY(180deg);
	  }

		.{$method}-blox-{$bloxid} .back { 
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

	  .{$method}-blox-{$bloxid}.flip .back { 
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
	<div id="blox{$method}-blox-{$bloxid}CodeDialogs" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="windowTitleLabel" aria-hidden="true" style=" height: 85px; overflow: hidden; position: absolute; top: 35%;   background-color : rgba(0,0,0,0.75);">
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

