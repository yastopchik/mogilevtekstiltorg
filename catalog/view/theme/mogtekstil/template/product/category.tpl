<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>  
   <div class="row">
    <aside id="sidebar-left" class="col-md-3">
		<?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
	</aside>
	<section id="sidebar-main" class="<?php echo $class; ?>">	
    <div id="content"><?php echo $content_top; ?>	      
      <?php if ($thumb || $description) { ?>
	  <div class="category-info clearfix hidden-xs hidden-sm">
	   <?php if ($thumb) { ?>
	    <div class="image">				  
				  <img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-responsive" />
	    </div>
	   <?php } ?>
	   <?php if ($description) { ?>
	   <div class="category-description wrapper">
         <p>
		 <?php echo $description; ?>
		 </p>
	   </div>        
       <?php } ?>	   
	  </div> 
      <?php } ?>
      <?php if ($categories) { ?>
	  <h2 class="panel-heading"><?php echo $text_refine; ?></h2>
	  <div class="subcategories panel panel-default">      
	  <div class="panel-body">
      <?php if (count($categories) <= 5) { ?>      
        <div class="col-lg-4 col-md-3 col-sm-4">          
            <?php foreach ($categories as $category) { ?>
            <div class="category-item"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
            <?php } ?>          
        </div>      
      <?php } else { ?>
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-lg-2 col-md-3 col-sm-4">          
            <?php foreach ($categories as $category) { ?>
            <div class="category-item"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></div>
            <?php } ?>          
        </div>
        <?php } ?>      
      <?php } ?>
	   </div>
	  </div>
      <?php } ?>	  
      <?php if ($products) { ?> 
	  <div class="product-filter clearfix">	   
	   <div class="display">
	     <span><?php echo $text_display; ?></span>
		 <div class="btn-group group-switch">
		  <button type="button" id="list-view" class="btn btn-switch" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button> 
		  <button type="button" id="grid-view" class="btn btn-switch active" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button> 
		 </div>
	   </div>
	   <div class="filter-right">
	     <div class="product-compare">
		  <a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a>
		 </div>
		 <div class="limit">
		   <span for="input-limit"><?php echo $text_limit; ?></span>
		   <select id="input-limit" onchange="location = this.value;">
            <?php foreach ($limits as $limits) { ?>
            <?php if ($limits['value'] == $limit) { ?>
            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
		 </div>
		 <div class="sort">
		   <span for="input-sort"><?php echo $text_sort; ?></span>
		    <select id="input-sort" onchange="location = this.value;">
            <?php foreach ($sorts as $sorts) { ?>
            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
            <?php } else { ?>
            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
            <?php } ?>
            <?php } ?>
          </select>
		 </div>
	   </div>	  	  
	  </div> 
      <div id="products" class="product-grid">
	  <div class="products-block"> 
        <?php foreach ($products as $product) { ?>
     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 product-col">
	 <div class="product-block">	 
	  <div class="image">
	    <?php if ($product['special']) { ?>
	     <span class="product-label-special label"><?php echo $text_sale; ?></span>
		<?php } ?>
    	 <div class="face">
            <a class="img" href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"></a>
         </div>
	    	<a href="<?php echo $product['thumb']; ?>" class="info-view colorbox product-zoom cboxElement" title="<?php echo $product['name']; ?>"><span class="fa fa-search-plus"></span></a>
		 <div class="product_quickview">
			<a class="colorbox iframe-link" href="<?php echo $product['quickhref']; ?>" title="<?php echo $text_quick_view; ?>"><span class="fa fa-eye"></span><?php echo $text_quick_view; ?></a>
		 </div>
	  </div>
	  <div class="product-meta">  
	  <h3 class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h3>
	  <ul class="list-unstyled description">
            <?php if ($product['manufacturer']) { ?>
            <li><b><?php echo $text_manufacturer; ?></b> <a href="<?php echo $product['manufacturer']; ?>"><?php echo $product['manufacturer']; ?></a></li>
            <?php } ?>
            <?php if ($product['sku']) { ?>
            <li><b><?php echo $text_sku; ?></b> <?php echo $product['sku']; ?></li>
            <?php } ?> 
      </ul>	 
	  <div class="description hidden" itemprop="description">
	   <?php echo $product['description']; ?>
      </div>       
	  <div class="review">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i><i class="fa fa-star-o fa-stack-1x"></i></span>
          <?php } ?>
          <?php } ?>
      </div>	  
	  <?php if ($product['price']) { ?>
	  <div class="price">
	      <?php if (!$product['special']) { ?>	
           <span class="special-price"><?php echo $product['price']; ?></span>		   
		   <meta content="" itemprop="priceCurrency">
          <?php } else { ?>
           <span class="price-new"><?php echo $product['special']; ?></span>
		   <span class="price-old"><?php echo $product['price']; ?></span>
		   <meta content="<?php echo $product['price']; ?>" itemprop="price">
		   <meta content="" itemprop="priceCurrency">
          <?php } ?>			
	  </div>
	  <?php } ?>	  
	 <!--   <div class="cart">
		<input value="<?php //echo $button_cart; ?>" onclick="cart.add('<?php //echo $product['product_id']; ?>');" class="button" type="button">			
	  </div>-->
	  <div class="wishlist">
	  	<a class="fa fa-heart" onclick="wishlist.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>">
	  		<span><?php echo $button_wishlist; ?></span>
	    </a>
	  </div>
      <div class="compare">
	    <a class="fa fa-retweet" onclick="compare.add('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>">
	  	  <span><?php echo $button_compare; ?></span>
	    </a>
	  </div>
	 <!-- product-meta -->
	 </div> 
    <!-- product-block -->
	</div>    
  <!-- pavcol-sm-5 -->
  </div>  
  <?php } ?>  
		</div>		
	    </div>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary canvas-menu"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></section></div>	  
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
