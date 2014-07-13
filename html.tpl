<div class="{$method}-blox"> 
	<div class="front">
		<a class="action btn btn-warning"><i class="fa fa-html5"></i></a>
	</div>
	<div class="back">
		<!-- Fixed navbar -->
		<div class="navbar navbar-default navbar-fixed-top"  role="navigation">
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
								<span class="label label-warning"> 	<i class="fa fa-3x fa-cube fa-spin"></i> <!--  God Mode  --> </span>
								</a>
							</li>
							<li>
								<a class="edit-submit " style="cursor: pointer">
								<span class="label label-success"> <i class="fa fa-globe fa-3x "></i> <!-- Public Mode --> </span>
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
						<button class="btn btn-warning active "><i class="fa fa-html5 "></i></button>
						<!-- <button class="btn btn-warning  "><i class="fa fa-image "> Image</i></button>
						<button class="btn btn-warning  "><i class="fa fa-paragraph "> Paragraph</i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button>
						<button class="btn btn-warning  "><i class="fa fa-html5 "></i></button> -->
						<button class="btn btn-danger" onclick=" editor.setHTML(''); $('#{$method}-html-source').html('');"><i class="fa fa-ban"></i></button>
						 <button type="submit" class="edit-submit btn btn-success " value="">
						 <!-- <i class="fa fa-gear fa-floppy-o"></i> -->
						 <i class="fa fa-gear fa-spin-reverse"></i> <i class="fa fa-cloud-upload"></i> <i class="fa fa-gear fa-spin"></i> </button> 
				          
			          </div>

			          <div class="nav navbar-nav navbar-right btn-group blox-bar-btns" style="margin-top: 5px;">

							<a class="btn btn-danger btn-lg"  onclick="bloxSwitch(false);"><i class="fa fa-eye-slash"></i></a>
							
							<a class="btn btn-success active disabled btn-lg" onclick="bloxSwitch(true);"><i class="fa fa-eye"></i></a>
			          	
			          </div>

			           
				</div><!--/.nav-collapse -->
			</div> 
		</div>

		<div class="row"> 
			<div class="col-md-6">
				 <div id="content-container">
				    <div id="editor-wrapper">
				        <div id="formatting-container" style="background: white;">
				          <span class="ql-format-group">
						  <select title="Font" class="ql-font">
						    <option value="sans-serif" selected>Sans Serif</option>
						    <option value="serif">Serif</option>
						    <option value="monospace">Monospace</option>
						    <option value="impact">Impact</option>
						  </select>
						  <select title="Size" class="ql-size">
						    <option value="10px">Small</option>
						    <option value="13px" selected>Normal</option>
						    <option value="18px">Large</option>
						    <option value="32px">Huge</option>
						  </select>
						</span>
						<span class="ql-format-group">
						  <span title="Bold" class="ql-format-button ql-bold"></span>
						  <span class="ql-format-separator"></span>
						  <span title="Italic" class="ql-format-button ql-italic"></span>
						  <span class="ql-format-separator"></span>
						  <span title="Underline" class="ql-format-button ql-underline"></span>
						  <span class="ql-format-separator"></span>
						  <span title="Strikethrough" class="ql-format-button ql-strike"></span>
						</span>
						<span class="ql-format-group">
						  <select title="Text Color" class="ql-color">
						    <option value="rgb(0, 0, 0)" label="rgb(0, 0, 0)" selected></option>
						    <option value="rgb(230, 0, 0)" label="rgb(230, 0, 0)"></option>
						    <option value="rgb(255, 153, 0)" label="rgb(255, 153, 0)"></option>
						    <option value="rgb(255, 255, 0)" label="rgb(255, 255, 0)"></option>
						    <option value="rgb(0, 138, 0)" label="rgb(0, 138, 0)"></option>
						    <option value="rgb(0, 102, 204)" label="rgb(0, 102, 204)"></option>
						    <option value="rgb(153, 51, 255)" label="rgb(153, 51, 255)"></option>
						    <option value="rgb(255, 255, 255)" label="rgb(255, 255, 255)"></option>
						    <option value="rgb(250, 204, 204)" label="rgb(250, 204, 204)"></option>
						    <option value="rgb(255, 235, 204)" label="rgb(255, 235, 204)"></option>
						    <option value="rgb(255, 255, 204)" label="rgb(255, 255, 204)"></option>
						    <option value="rgb(204, 232, 204)" label="rgb(204, 232, 204)"></option>
						    <option value="rgb(204, 224, 245)" label="rgb(204, 224, 245)"></option>
						    <option value="rgb(235, 214, 255)" label="rgb(235, 214, 255)"></option>
						    <option value="rgb(187, 187, 187)" label="rgb(187, 187, 187)"></option>
						    <option value="rgb(240, 102, 102)" label="rgb(240, 102, 102)"></option>
						    <option value="rgb(255, 194, 102)" label="rgb(255, 194, 102)"></option>
						    <option value="rgb(255, 255, 102)" label="rgb(255, 255, 102)"></option>
						    <option value="rgb(102, 185, 102)" label="rgb(102, 185, 102)"></option>
						    <option value="rgb(102, 163, 224)" label="rgb(102, 163, 224)"></option>
						    <option value="rgb(194, 133, 255)" label="rgb(194, 133, 255)"></option>
						    <option value="rgb(136, 136, 136)" label="rgb(136, 136, 136)"></option>
						    <option value="rgb(161, 0, 0)" label="rgb(161, 0, 0)"></option>
						    <option value="rgb(178, 107, 0)" label="rgb(178, 107, 0)"></option>
						    <option value="rgb(178, 178, 0)" label="rgb(178, 178, 0)"></option>
						    <option value="rgb(0, 97, 0)" label="rgb(0, 97, 0)"></option>
						    <option value="rgb(0, 71, 178)" label="rgb(0, 71, 178)"></option>
						    <option value="rgb(107, 36, 178)" label="rgb(107, 36, 178)"></option>
						    <option value="rgb(68, 68, 68)" label="rgb(68, 68, 68)"></option>
						    <option value="rgb(92, 0, 0)" label="rgb(92, 0, 0)"></option>
						    <option value="rgb(102, 61, 0)" label="rgb(102, 61, 0)"></option>
						    <option value="rgb(102, 102, 0)" label="rgb(102, 102, 0)"></option>
						    <option value="rgb(0, 55, 0)" label="rgb(0, 55, 0)"></option>
						    <option value="rgb(0, 41, 102)" label="rgb(0, 41, 102)"></option>
						    <option value="rgb(61, 20, 102)" label="rgb(61, 20, 102)"></option>
						  </select>
						  <span class="ql-format-separator"></span>
						  <select title="Background Color" class="ql-background">
						    <option value="rgb(0, 0, 0)" label="rgb(0, 0, 0)"></option>
						    <option value="rgb(230, 0, 0)" label="rgb(230, 0, 0)"></option>
						    <option value="rgb(255, 153, 0)" label="rgb(255, 153, 0)"></option>
						    <option value="rgb(255, 255, 0)" label="rgb(255, 255, 0)"></option>
						    <option value="rgb(0, 138, 0)" label="rgb(0, 138, 0)"></option>
						    <option value="rgb(0, 102, 204)" label="rgb(0, 102, 204)"></option>
						    <option value="rgb(153, 51, 255)" label="rgb(153, 51, 255)"></option>
						    <option value="rgb(255, 255, 255)" label="rgb(255, 255, 255)" selected></option>
						    <option value="rgb(250, 204, 204)" label="rgb(250, 204, 204)"></option>
						    <option value="rgb(255, 235, 204)" label="rgb(255, 235, 204)"></option>
						    <option value="rgb(255, 255, 204)" label="rgb(255, 255, 204)"></option>
						    <option value="rgb(204, 232, 204)" label="rgb(204, 232, 204)"></option>
						    <option value="rgb(204, 224, 245)" label="rgb(204, 224, 245)"></option>
						    <option value="rgb(235, 214, 255)" label="rgb(235, 214, 255)"></option>
						    <option value="rgb(187, 187, 187)" label="rgb(187, 187, 187)"></option>
						    <option value="rgb(240, 102, 102)" label="rgb(240, 102, 102)"></option>
						    <option value="rgb(255, 194, 102)" label="rgb(255, 194, 102)"></option>
						    <option value="rgb(255, 255, 102)" label="rgb(255, 255, 102)"></option>
						    <option value="rgb(102, 185, 102)" label="rgb(102, 185, 102)"></option>
						    <option value="rgb(102, 163, 224)" label="rgb(102, 163, 224)"></option>
						    <option value="rgb(194, 133, 255)" label="rgb(194, 133, 255)"></option>
						    <option value="rgb(136, 136, 136)" label="rgb(136, 136, 136)"></option>
						    <option value="rgb(161, 0, 0)" label="rgb(161, 0, 0)"></option>
						    <option value="rgb(178, 107, 0)" label="rgb(178, 107, 0)"></option>
						    <option value="rgb(178, 178, 0)" label="rgb(178, 178, 0)"></option>
						    <option value="rgb(0, 97, 0)" label="rgb(0, 97, 0)"></option>
						    <option value="rgb(0, 71, 178)" label="rgb(0, 71, 178)"></option>
						    <option value="rgb(107, 36, 178)" label="rgb(107, 36, 178)"></option>
						    <option value="rgb(68, 68, 68)" label="rgb(68, 68, 68)"></option>
						    <option value="rgb(92, 0, 0)" label="rgb(92, 0, 0)"></option>
						    <option value="rgb(102, 61, 0)" label="rgb(102, 61, 0)"></option>
						    <option value="rgb(102, 102, 0)" label="rgb(102, 102, 0)"></option>
						    <option value="rgb(0, 55, 0)" label="rgb(0, 55, 0)"></option>
						    <option value="rgb(0, 41, 102)" label="rgb(0, 41, 102)"></option>
						    <option value="rgb(61, 20, 102)" label="rgb(61, 20, 102)"></option>
						  </select>
						</span>
						<span class="ql-format-group">
						  <span title="List" class="ql-format-button ql-list"></span>
						  <span class="ql-format-separator"></span>
						  <span title="Bullet" class="ql-format-button ql-bullet"></span>
						  <span class="ql-format-separator"></span>
						  <select title="Text Alignment" class="ql-align">
						    <option value="left" label="Left" selected></option>
						    <option value="center" label="Center"></option>
						    <option value="right" label="Right"></option>
						    <option value="justify" label="Justify"></option>
						  </select>
						</span>
						      <span class="ql-format-group">
						        <span title="Link" class="ql-format-button ql-link"></span>
						        <span class="ql-format-separator"></span>
						        <span title="Image" class="ql-format-button ql-image"></span>
						      </span>
						        </div>
						        <div id="editor-container" style="background-color: white;"></div>
						      </div>
						    </div>
			</div>
			<div class="col-md-6">
				<button onclick="editor.setHTML($('#{$method}-html-source').html());"><i class="fa fa-arrow-left"></i></button>
				<textarea class="row col form-control"  rows="20" cols="50" id="{$method}-html-source" style="font-size: 14px; background-color: white;" >
					
				</textarea>
			</div>
		</div>
		 	 <link rel="stylesheet" type="text/css" href="/bin/css/syntax.css">
    
    	 <link rel="stylesheet" type="text/css" href="/bin/css/styles.css">
    	
		 <link rel="stylesheet" type="text/css" href="/bin/css/quill.snow.css">
	
    
    <script type="text/javascript" src="/bin/js/quill.js"></script>
    <script type="text/javascript">
      var editor = new Quill('#editor-container', { 
        modules: {
          'toolbar': { container: '#formatting-container' },
          'image-tooltip': true,
          'link-tooltip': true
        },
        theme : 'snow'
      });
      editor.on('selection-change', function(range) {
        console.log('selection-change', range)
      });
      editor.on('text-change', function(delta, source) {
        console.log('text-change', delta, source)


        if(source != 'api'){
	 		var html = editor.getHTML(); 
	        $('#{$method}-html-source').html('');
	        $('#{$method}-html-source').html(html);
        }else{
        	var html = $('#{$method}-html-source').html();
        	editor.setHTML(html);
        }

        

      });

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
	      $('.{$method}-blox').parent().toggleClass('fullscreen-me');
	      
	    });
	    $('.{$method}-blox .edit-submit').click(function(e){ 
	      $('.{$method}-blox').removeClass('flip');
		  $('.{$method}-blox').parent().toggleClass('fullscreen-me');
	      // why not update that list for fun?
	      
	      e.preventDefault();
	    });
	</script>
</div>

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
	height                      : inherit;
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
	border                      : 1px solid darkorange;
	/*background                : #333;*/ 
	
		padding-top: 60px;
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


	}

  .{$method}-blox.flip .back { 
	z-index           : 1000;
	/*background      : #80868d;*/
	 
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
