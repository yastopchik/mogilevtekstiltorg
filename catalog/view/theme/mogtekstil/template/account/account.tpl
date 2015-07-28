<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <?php if ($success) { ?>
  <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?></div>
  <?php } ?>
  <div class="row">   
  <?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <section id="sidebar-main" class="<?php echo $class; ?>">
    <div id="content"><?php echo $content_top; ?>
      <h1 class="panel-heading"><?php echo $text_my_account; ?></h1>
      <div class="subcategories panel panel-default">      
	  <div class="panel-body">
	  <div class="col-lg-6 col-md-6 col-sm-6">      
        <div class="category-item"><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></div>
        <div class="category-item"><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></div>
        <div class="category-item"><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></div>
        <div class="category-item"><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></div>     
      </div>
	  </div>
	  </div>   
     <!-- <h2 class="panel-heading"><?php //echo $text_my_orders; ?></h2>-->
      <!--ColUMN_RIGHT
      <div class="subcategories panel panel-default">      
	  <div class="panel-body">	    
	  <div class="col-lg-4 col-md-6 col-sm-6">     
        <div class="category-item"><a href="<?php //echo $order; ?>"><?php //echo $text_order; ?></a></div>
       <div class="category-item"><a href="<?php //echo $download; ?>"><?php //echo $text_download; ?></a></div>
        <?php if ($reward) { ?>
        <div class="category-item"><a href="<?php //echo $reward; ?>"><?php //echo $text_reward; ?></a></div>
        <?php } ?>
        <div class="category-item"><a href="<?php //echo $return; ?>"><?php //echo $text_return; ?></a></div>
        <div class="category-item"><a href="<?php //echo $transaction; ?>"><?php //echo $text_transaction; ?></a></div>
        <div class="category-item"><a href="<?php //echo $recurring; ?>"><?php //echo $text_recurring; ?></a></div>
      </div> 
	  </div>
	  </div> -->
      <h2 class="panel-heading"><?php echo $text_my_newsletter; ?></h2>
      <div class="subcategories panel panel-default">      
	  <div class="panel-body">
	  <div class="col-lg-6 col-md-6 col-sm-9">
        <div class="category-item"><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></div>
      </div>
	  </div>
	  </div>
      <?php echo $content_bottom; ?></div>
      </section>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>