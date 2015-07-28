<div id="featured">
<div class="container">
<div class="row">
  <div class="col-lg-12 col-md-12  ">
	<div class="box producttabs">
    <div class="module-desc">
	   <p><br></p> 
	</div>
	<div class="tab-nav">
	<ul class="nav nav-tabs bullet">
					 <li class="active"><a href="" data-toggle="tab"><?php echo $heading_title; ?></a></li>					 
			</ul>
    <!-- tab-nav -->
	</div>	
    <div class="tab-content box-content">
    <div class="carousel-inner">
    <div class="products-block item active">
    <div class="row products-row">
     <?php foreach ($products as $product) { ?>
     <div class="col-sm-5 col-lg-2.4 col-md-2.4 col-xs-12 product-col">
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
	  <h3 class="name">
	        <a href="<?php echo $product['href']; ?>">
	            <?php 	                   
	                   if(!empty($product['sku'])) 
	                       echo $product['name']. ' ' .$product['sku'];
	                   else
	                       echo $product['name'];
	            ?>
	        </a></h3>
	  <?php  echo $product['manufacturer']; ?>
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
	  <!--  <div class="cart">
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
   <!-- row products-row -->
  </div>
  <!-- products-block item active -->
  </div>
  <!-- carousel-inner -->
  </div>
  <!-- tab-content box-content -->
  </div>
  <!-- box producttabs -->
  </div>  
  </div>  
 <!-- row --> 
</div>
</div>
</div>
