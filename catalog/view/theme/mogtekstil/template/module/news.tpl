<div id="showcase ">
 <div class="container">
  
   <div class="main_text"> 
   <div class="main_container">    	
    <div class="news-item-news">   
      <h3><?php echo $heading_title; ?></h3>
      <p><?php echo $description; ?></p>
    </div>      
   </div>
   
   <div class="news_container">
    <ul>
     <?php $i=1; ?>
	 <?php foreach ($all_news as $news) { ?>
	<li>
	
	<div class="news-item-news">
	<p class="news-date-time"><?php echo $news['date_added']; ?></p>	
	<h3><?php echo $news['title']; ?></h3>
	<a href="<?php echo $news['view']; ?>">
	<?php echo $news['description']; ?></a>	
	</div>
	</li>
    <?php 
		if($i==3)
		break;
		$i++;}	
	?>
   </ul>
   </div>
   </div>
   </div>
 
</div>

