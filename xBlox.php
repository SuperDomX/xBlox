<?php
/**
 * @name    Objects 
 * @desc    Add / Remove Engine Blox
 * @version v1(2.0)
 * @author  i@xtiv.net
 * @icon    blueprint4.png
 * @mini    object-group 
 * @see     construct
 * @link    blox
 * @alpha   true
 * @todo
 */

	class xBlox extends Xengine{
		function dbSync(){
			return array(
				'blox' => array(
					'name'      => array('Type'=>'varchar(255)'),
					'describe'  => array('Type'=>'varchar(255)'),
					'enabled'   => array('Type'=>'varchar(255)'),
					'area'      => array('Type'=>'varchar(255)'),
					'weight'    => array('Type'=>'int(2)'),
					'blox_file' => array('Type'=>'varchar(255)'),
					'blox_code' => array('Type'=>'blob'),
					'icon'      => array('Type'=>'varchar(255)')
				),
				'blueprints' => array(
					'blueprint_body'            => array('Type'=>'blob'),
					'blueprint_label'           => array('Type'=>'varchar(100)'),
					'blueprint_architect'       => array('Type'=>'varchar(50)'),
					'blueprint_architect_email' => array('Type'=>'varchar(255)'),
					'blueprint_domain_origin'   => array('Type'=>'varchar(255)')
				),
				//
				'blox_quest' 	=> array(
					'quest' 	=> array('Type'=>'varchar(255)'),
					'blox'		=> array('Type'=>'varchar(50)'),
					'params'	=> array('Type'=>'blob'), 
					'online'	=> array('Type'=>'boolean','Default'=>1)
				),
				// This should hold the config for the blox config. 
				'blox_blox' => array(
					'quest_id'  	=> array('Type'=>'int(8)'),
					'cfg_option'	=> array('Type'=>'varchar(50)'),
					'cfg_params'	=> array('Type'=>'blob'),
					'cfg_timestamp' => array('Type'=>'TIMESTAMP','Default'=>'CURRENT_TIMESTAMP') 
				),

				// Blox watch is a list of admin blox that the user can automatically 
				'blox_watch' => array(
					'user_id' => array('Type'=>'int(8)'),
					'title'   => array('Type'=>'varchar(50)'),
					'path'    => array('Type'=>'varchar(255)'),
					'col'     => array('Type'=>'int(1)','Default'=>6),
					'weight'  => array('Type'=>'int(3)','Default'=>0)
				)
			);
		}



		/**
		 	@name qBlox
		 	@desc Parses all the extras to look for which functions act as a blox.		 	
		**/

		public function qBlox($cat=null,$class=null,$method=null)
		{

			 
			// WE need all the xtras 
			$xtras = $this->getXtras();


			$blox = array();

			// lets check to see which ones have comment functions.
			// to make the function into a blox; add the @blox variable & use the lang variable in your lang file.
			// ex: @blox my1stblox
			//

			// Toy Blox 1 - Static Blox

			// if the @blox comment is set; add it to the default blox set.
 		
 			// exit;
			foreach ($xtras as $x => $b) {

				if( ($cat == null || $b['see'] == $cat)  ){
					$rClass = new ReflectionClass($b['class']); 
					
					if ( $class != null && $class != $rClass->name )  
						continue;

					$rMethods = $rClass->getMethods();
	                foreach($rMethods as $rMethod) {
	                    $doc = $rMethod->getDocComment();
	                    if($doc){

	                    	$data =  trim(preg_replace('/\r?\n *\* */', ' ', $doc));
	                    	$data =  trim(preg_replace('/\t?\t *\* *\* *\/* */', '', $doc));

							preg_match_all('/@([a-z]+)\s+(.*?)\s*(?=$|@[a-z]+\s)/s', $data, $matches);
							$info = array_combine($matches[1], $matches[2]);

							if( isset($info['blox']) && ($method == null || $method == $info['name'] )  ){
								$blox[$rClass->name][$info['name']]= $info;
							}

							  
	              		}
	                }
				}
					
				

				

                

               

			}
 
			$this->set('blox',$blox );

			return $blox; 
			// Toy Blox 2 - Custom Blox
			// These blox are stored in the database and mainly consist of custom html, js, and css code.





			// Toy Blox 3 - neXus Door Blox

			// Toy Blox 4  - These Blox are an array of other blox togeth 



			# code...
		}


		function __construct($sdx=null){
			$this->sdx = $sdx;
		}

		function autoRun($sDom){
			// Check to make sure we have the proper files.
			if(!is_file("")) { 
    			// git("submodule add --force https://github.com/XenGenie/Hydrogen x/Hydrogen ");
			}

			$r = null;


			$this->_comment("Entering through Blox");
			// Does this need to run - everytime!?

			if($this->Key['is']['admin']){
				$quest = strtolower(str_replace('%20', '-', $_SERVER['REQUEST_URI']));

				$q = $this->q(); 

				$qBlox = $this->qBlox();
				$blox 	= $q->Select('*','blox_quest',array(
					'quest' => $quest.'*'
				));

				foreach ($blox as $r => $c) {
					$t = explode('-', $c['blox']);
					$rBlox[$t[0]][$t[1]] = $qBlox[$t[0]][$t[1]];
					$rBlox[$t[0]][$t[1]]['id'] = $c['id'];
				}

				$blox 	= $q->Select('*','blox_quest',array(
					'quest' => $quest
				));

				foreach ($blox as $r => $c) {
					$t = explode('-', $c['blox']);
					$rBlox[$t[0]][$t[1]] = $qBlox[$t[0]][$t[1]];
					$rBlox[$t[0]][$t[1]]['id'] = $c['id'];
				} 

				$r['qBlox'] = $qBlox;
				$r['blox']  = $rBlox ;
				$r['watchtower'] = $this->watchtower();
			}

			if(isset($_POST['bloxSwitch'])){
				$r = $this->bloxSwitch($_POST['bloxSwitch']);
			}elseif (isset($_POST['watchtower'])) {
				$r = $this->bloxSwitch($_POST['watchtower']);
			}

			return $r;
		}

		/**
		 * create read update delete!
		 * @param $id
		 */
		
		function create($id=0){
			// SQL connection
			$q = $this->q();
			
			$this->set('id',$id);
			
			if(isset($_POST['form'])){
				// Update Existing Record
				if($id){
					//echo $_POST['form']['blox_code'];
					$q->Update('blox',$_POST['form'],array('id'=>$id));
					$this->set('form',$_POST['form']);
					echo $q->error;
				// New Record!	
				}else{	
					$q->Insert('blox',$_POST['form']);
					// header("Location: /@/blox");
				}
			}else{
				$blox_dir = HTML_DIR.'/~blox/';
				$blox = scandir($blox_dir);

				foreach($blox as $k => $v){
					if(!is_dir($blox_dir.$v)){
						$v = str_replace('.html','',$v);
						$blox_files[$v] = $v;
					}
				}

				$this->set('blox_files',$blox_files);

				if($id){
					$edit = $q->Select('*','blox', array('id'=>$id) );
					$this->set('form',$edit[0]);
				}
			}
		}
		
		/**
		 * read blox data
		 */
		function read(){
			$blox_dir = HTML_DIR.'/~blox/';
			$blox = scandir($blox_dir);

			foreach($blox as $k => $v){
				if(!is_dir($blox_dir.$v)){
					$v = str_replace('.html','',$v);
					//$blox_files[$v] = $v;
					
					$blox[$k] = array(
						'id' => $v,
						'name' => ucwords(str_replace('_',' ',$v))
					);
					
				}
			}

			$this->set('data',$blox);
		}
		
		/**
		 * update blox data
		 */
		function update($p){
			//$this->create($p);
		}
		
		/**
		 * delete blox data
		 */
		function delete(){
			
		}
		
		/**
		 * @remotable
		**/
		public function blueprintTree(){
			$q = $this->q();
			$b = $q->Select('*','blueprints');

			foreach ($b as $k => $value) {
				# code...
				$b[$k]['text'] = $b[$k]['blueprint_label'];
				$b[$k]['leaf'] = true;
				$b[$k]['iconCls']  = 'x-icon-16x16-blueprint-0';
			}

			return $b;
		}

		public function blueprints($value='')
		{
			# code...
		}

		public function installTheme($value='')
		{
			# code...
		}
		/**
		 * @remotable
		**/
		public function blueprint($CRUD,$A=false)
		{
			$q = $this->q();
  
			switch ($CRUD) {
				case 'create':  
					if($A->id < 1){
						$r = $q->Insert('blueprints',$A);						
					}else{

						$this->blueprint('update',$A);  
					}
				break;
				case 'read':
					if(false == $A){
						$r = $q->Select('*','blueprints');

						foreach ($b as $k => $value) {
							# code...
							$r[$k]['text'] = $b[$k]['blueprint_label'];
							$r[$k]['leaf'] = true;
							$r[$k]['iconCls']  = 'x-icon-16x16-blueprint-0';
						} 
					}else{ 
						$r = $q->Select('*','blueprints',array(
							'id' => $A->id
						));
						$r = $r[0]; 
					}
					
				break;
				case 'update':
					$r = $q->Update('blueprints',(array) $A,array(
						'id'=>$A->id 
					));
				break;
				case 'delete':
					$r = $q->Delete('blueprints',$A);
				break;
				default:
					return false;
				break;
			}
			return array(
				'success' => ($q->error == ''),
				'data'    => $r,
				'error'   => $q->error
			);
		}

		function readProp(){
			
			$this->set('blox','boing');
			
			
			$str = "{ label: 'Property Grid',  grouping: false,  autoFitColumns: true,  productionQuality: true,  created: new Date(),   tested: false,  version: 0.8, borderWidth: 2 }";
			
			$data = json_decode($str);
			 
			
			$this->set('data',$str);
			
		}
		
		function index(){
			$q = $this->q();
			$q->mBy = array('weight'=>'ASC');
			return array(
				'xBlox' => $q->Select('*','blox')
			);
		}
		function blue(){
			$this->dandd();	
		}
		function dandd(){
			$q = $this->q();
			$q->mBy = array('weight'=>'ASC');
			$this->set('xBlox',$q->Select('*','blox'));
		}
		
		 
		function stylibs(){
			// This organizes both a js batch file and css...
			
			
			
			
		}
		
		function updateOrder($area){
			$blox = $_GET['blox'];

			$q = $this->q();
			function updateBlox($q,$id,$area,$weight=0,$enabled=true){
				$q->Update('blox',array(
					'area' 		=> $area,
					'enabled'	=> ($enabled) ? 1 : 0,
					'weight'	=> $weight
				), array('id'=>$id));

			}

			switch($area){
				default:
					if(is_array($blox)){
						$i = 0;
						foreach($blox as $k => $v){
							updateBlox($q,$v,$area,$i);
							$i++;
						}
					}else{
						updateBlox($q,$blox,$area,0);
					}
				break;
				case('disabled'):
					if(is_array($blox)){
						$i = 0 ;
						foreach($blox as $k => $v){
							updateBlox($q,$v,'disabled',$i,false);
						}
					}else{
						updateBlox($q,$blox,'disabled',0,false);
					}
				break;
			}
			echo "Order Saved @ ".date('h:i:s a');
			die();
		}

		public function jumbotron($value='')
		{
			
		}

		public function _readThemes()
		{
			$dir = DOC_ROOT.$this->_CFG['dir']['html'].'/themes';

			$themes= array();

			if ($handle = opendir($dir)) {
			    while (false !== ($entry = readdir($handle))) {
			        if ($entry != "." && $entry != "..") {
			            $themes[] = "$entry";
			        }
			    }
			    closedir($handle);
			}

			return $themes;
		}

		public function ai()
		{
			# code...
		}

		public function templates($value='')
		{
			

			return array(
				'themes' => $this->_readThemes()
			);
		}

		/**
			@name topX
			@blox Engine Blox
			@icon circle
			@desc Test 
			@col 6
			@filter read
			@backdoor true
		**/
		public function topX($value='')
		{
			// Code to run for blox.
		}
		/**

		**/

		public function bloxDelete($id)
		{
			if($this->Key['is']['admin']){
				return array(
					'success' => $this->q()->Delete('blox_quest',array(
						'id' => $id
					))
				);
			}
		}

		public function bloxStar($id, $quest)
		{
			if($this->Key['is']['admin']){
				 
				return array(
					'success' => $this->q()->Update('blox_quest',array(
						'quest' => ($quest == '/') ? $quest.'*' : $quest.'/*'
					),array(
						'id' => $id
					))
				);
			}
		}

		public function bloxSwitch($blox)
		{
			if($blox['online'] == 'star'){
				$blox['online'] = 1;
				$id = $this->bloxSwitch($blox);
				$this->bloxStar($id['id'],$blox['quest']); 
			}

			# Admins Only...
			if($this->Key['is']['admin']){
				$q = $this->q();
				
				// Get the Navi Request
				$isLink = $q->Select('linktothe','navi_heylisten',array(
					'quest' => $blox['quest']
				));



				if(empty($isLink)){
					$q->Insert('navi_heylisten',array(
						'quest' 	=> $blox['quest'],
						'linktothe' => 'blox'
					));
				} 

				$blox['online'] = ($blox['online'] == 'true' )? true : false;


				$findQuest = $q->Select('id','blox_quest',array(
					'quest' => $blox['quest'],
					'blox' 	=> $blox['blox']
				));

				if(empty($findQuest)){ 
					$id = $q->Insert('blox_quest',$blox);

				}else{

					$q->Update('blox_quest',$blox,$findQuest[0]);
					$id = intval($findQuest[0]['id']);
				}


				return array(
					'success' => true,
					'id' =>  $id, 
				);
			}
		}

		/**
			@name portal
			@blox Portal
			@icon ge fa-spin 
			@desc Pull another page as a blox.
			
		**/
		public function portal()
		{
			# code...
		}

		/**
			@name custom
			@blox jsFiddle
			@desc Easily Import a JS file Link into Your Website!
			@icon jsfiddle
		**/
		public function custom()
		{

			return array(
				'jsfiddle' => file_get_contents('http://jsfiddle.net/3njag/2/show/')
			);
			# code...
		}


		public function save($quest=0)
		{
			$q = $this->q();
			if ( $this->Key['is']['admin'] && isset($_POST['blox']) ) {
				$blox = $_POST['blox'];

				foreach ($blox as $key => $value) {
					$q->Insert('blox_blox', $value);
				}

				return array(
					'success' => (empty($q->error)),
					'error'   => $q->error,
					'post' 	  => $_POST
				); 
			}
		}

		/**
			@name html
			@blox [Meshette]
			@desc All-in-One WysiWyg for HTML,CSS, & JS
			@icon fire
		**/
		public function html($id=0,$time=null)
		{
			$q = $this->q();

			// Select all blox that have been setup on this quest/pages			
			$q->mBy['id'] = 'DESC'; 

			$needle = array( 
				'quest_id'   => $id, 
				'cfg_option' => 'css-source'
			);

			if($time){
				$needle['cfg_timestamp'] = str_replace('%20', ' ', $time);
			}

			$css = $q->Select('*','blox_blox',$needle);

			$tsql = $q->mSql;

			$q->mBy['cfg_timestamp'] = 'DESC'; 
			$html = $q->Select('*','blox_blox',array(
				'quest_id'      => $id,
				'cfg_option'    => 'html-source',
				'cfg_timestamp' => $css[0]['cfg_timestamp']
			)); 

			$q->mBy['cfg_timestamp'] = 'DESC';  
			$js = $q->Select('*','blox_blox',array(
				'quest_id'      => $id,
				'cfg_option'    => 'js-source',
				'cfg_timestamp' => $css[0]['cfg_timestamp']
			));

			$this->set('blox_cfg',array(
				'css'  => $css[0]['cfg_params'],
				'html' => $html[0]['cfg_params'],
				'js'   => $js[0]['cfg_params']
			));
 
 			$this->set('bloxid',$id);

 			// $q->mBy['id'] = 'DESC'; 
 

 			$time = $q->Select(
 				'cfg_timestamp',
 				'blox_blox',
 				array(
 					'quest_id' => $id
 				)
 			);

 			$time = $q->mSql; 

 			$time = $q->Q("SELECT * FROM ( $time ) as times GROUP BY cfg_timestamp ORDER BY cfg_timestamp DESC");

 			$this->set('timestamps',$time);
 			$this->set('tracks',array(
 				'first' => $time[count($time)-1]['cfg_timestamp'],
 				'last'  => $time[0]['cfg_timestamp']
 			));


 			$v = array();
 			foreach ($time as $r => $c) {
 				$t = strtotime($c['cfg_timestamp']);
				$v[date("Y",$t)][date("F",$t)][date("l, d",$t)][date("h _ a",$t)][date("h:i",$t)][date("h:i:sa",$t)] = $c['cfg_timestamp'];
 			}

 			return array(
				'success' => (empty($q->error)),
				'error'   => $q->error, 
				'versions' => $v,
				'css'  => $css[0]['cfg_params'],
				'html' => $html[0]['cfg_params'],
				'js'   => $js[0]['cfg_params']
			);

		}

		/**
			@name tinyMCE
			@blox tinyMCE
			@desc The Famous tinyMCE editor
			@icon keyboard-o
		**/
		public function tinyMCE($id=0)
		{
			$q = $this->q();

			$b = $q->Select('*','blox_blox',array(
				'quest_id'=> $id
			));



			if ( $this->Key['is']['admin'] && isset($_POST['blox']) ) {
				$blox = $_POST['blox'];

				if(empty($b)){
					$id = $q->Insert('blox_blox', $blox);
				}else{
					$q->Update('blox_blox', $blox, array(
						'id' => $b[0]['id']
					));
				} 

				return array(
					'success' => (empty($q->error)),
					'error'   => $q->error,
					'post' 	  => $_POST
				);

			}else{
				if(!empty($b)){
					$this->set('blox_cfg',$b[0]);
				} 
			}
 
 			$this->set('bloxid',$id);

 			return array(
				'success' => (empty($q->error)),
				'error'   => $q->error,
				'post' 	  => $_POST
			);

		}

		/**
			@name css
			@blox CSS
			@desc Simple Easy to use Custom Code Blox
			@icon css3
		**/
		public function css()
		{
			# code...
		}

		/**
			@name js
			@blox Javascript
			@desc Simple Easy to use Custom Code Blox
			@icon code
		**/
		public function js()
		{
			# code...
		}

		protected function watchtower($s=null){ 
			$q = $this->q();
			$u = $_SESSION['user'];
			$d = $_POST;   

			$r['data'] = $d; 

			$d['user_id'] = $u['id'];

			switch ($s) {
				case 'add':
					$del = $q->Select('id','blox_watch',$d);

					$r['success'] = ( !empty($del[0]) ) ? $q->Delete('blox_watch',$d) : $q->Insert('blox_watch',$d);						
				break;
				
				default:
					$r['data'] = $q->Select('*','blox_watch',array(
						'user_id' => $u['id']
					));
				break;
			} 
			$r['error'] = $q->error;
			return $r;
		}
	}

?>
