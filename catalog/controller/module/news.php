<?php  
class ControllerModuleNews extends Controller {
	public function index() {
		$this->load->language('module/news');
		$this->load->model('tool/image');
		$this->load->model('extension/news');
		
		$filter_data = array(
			'page' => 1,
			'limit' => 5,
			'start' => 0,
		);
	 
		$data['heading_title'] = $this->language->get('heading_title');
	 
		$all_news = $this->model_extension_news->getAllNews($filter_data);
	 
		$data['all_news'] = array();
		$image="";
		foreach ($all_news as $news) {
			if (is_file(DIR_IMAGE . $news['image'])) {
				$image = $this->model_tool_image->resize($news['image'], 229, 300);
			}
			$data['all_news'][] = array (
				'title' 		=> html_entity_decode($news['title'], ENT_QUOTES),				
				'description' 	=> (strlen(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))) > 100 ? substr(strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES)), 0, 100) . '...' : strip_tags(html_entity_decode($news['short_description'], ENT_QUOTES))),
				'view' 			=> $this->url->link('information/news/news', 'news_id=' . $news['news_id']),
				'date_added' 	=> date($this->language->get('date_format_short'), strtotime($news['date_added'])),
				'image' 	   => $image
			);
			
		}
		/*Information on home page*/		
		$this->load->language('information/information');
		
		$this->load->model('catalog/information');	
		
		$information_id = 7;
		
		$information_info = $this->model_catalog_information->getInformation($information_id);
		
		if ($information_info) {			
			
			$data['heading_title'] = $information_info['title'];	
			
			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
		}
	 
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/news.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/module/news.tpl', $data);
		} else {
			return $this->load->view('default/template/module/news.tpl', $data);
		}
	}
}