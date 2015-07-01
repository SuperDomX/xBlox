{include file="~widgets/billboard.tpl"}
<div class="row">
    <div class="col-md-12">
        <section class="widget widget-tabs">
            <header>
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#stats" data-toggle="tab">
                        	Themes
                        	<span class="label label-info">
                        	{$themes|@count}
                        	</span>
                        </a>
                    </li>
                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Add New... <i class="fa fa-caret-down"></i></a>
                        <ul class="dropdown-menu">
                            <li ><a href="#dropdown1" data-toggle="tab">Featured</a></li>
                            <li ><a href="#dropdown2" data-toggle="tab">Popular</a></li>
                            <li>
                                <a href="#report" data-toggle="tab">Latest</a>
                            </li>
                            <li>
                                <a href="#report" data-toggle="tab">Filter...</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </header>
            <div class="body tab-content">
                <div id="stats" class="tab-pane active clearfix">
             		<ul class="row thumbnails">
                        {foreach $themes as $t => $theme}
                            
                            <li class="col-sm-4">
                                <div class="thumbnail">
                                    <img src="" alt="">
                                    <div class="caption">
                                        <h4>{$theme|ucwords}</h4>
                                        <!-- <p><strong>You will never know exactly how something will go until you try it.</strong> You can think three hundred times and still have no precise result... </p> -->
                                        <p class="pull-right">
                                            <a href="#" class="btn btn-success">
                                                Activate
                                            </a>
                                            <a href="/x/html/themes/{$theme}/index.html" target="_blank" class="btn btn-info">
                                                Live Preview
                                            </a>
                                        </p>
                                    </div>
                                </div>
                            </li>
                        {/foreach}
	                    
	                </ul>
                </div>
                <div id="report" class="tab-pane">
                    <div style="font-size: 240px; text-align: center; color: #56bc76; text-shadow: 2px 2px 2px #000000; height: 280px;">
                        <i class="fa fa-picture-o"></i>
                    </div>
                </div>
                <div id="dropdown1" class="tab-pane">
                    <p>The same thing is for startups and ideas. If you have an idea right away after it appears
                        in your mind you should go and make a first step to implement it. If you will think too
                        much it will sink in the swamp of never implemented plans and ideas or will just go away
                        or will be implemented by someone else.</p>
                    <p><strong>5 months of doing everything to achieve nothing.</strong></p>
                    <p>I had an idea named Great Work. It was a service aimed to help people find their passion.
                        Yes I know it sound crazy and super naïve but I worked on that. I started to work on
                        planning, graphics, presentations, pictures, descriptions, articles, investments and so
                        on. I worked on everything but not the project itself</p>
                    <div>
                        <button class="btn btn-danger">Some button</button>
                        <button class="btn btn-default">Cancel</button>
                    </div>
                </div>
                <div id="dropdown2" class="tab-pane">
                    <p>I realized really simple thing recently. Try is million times better than think. The real world is much more representative than any models either they are built in mind or on the shit of paper.</p>
                    <div>
                        <button class="btn btn-warning btn-block">Some button</button>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>

<div class="row">        
    {include file="~widgets/col.tpl" col=12 method="blueprints" title="Blueprints Installed "} 
    {*include file="~widgets/col.tpl" col=12 method="index" xPHP="navigation" title="Domain Navigation"*}
</div>