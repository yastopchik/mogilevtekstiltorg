<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<script src="catalog/view/javascript/jquery/jquery.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<script src="catalog/view/javascript/common_002.js" type="text/javascript"></script>
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<link href="catalog/view/theme/mogtekstil/stylesheet/paneltool.css" rel="stylesheet">
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/mogtekstil/stylesheet/stylesheet.css" rel="stylesheet">
<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        var active = $('.collapse.in').attr('id');
        $('span[data-target=#'+active+']').html("-");

        $('.collapse').on('show.bs.collapse', function () {
            $('span[data-target=#'+$(this).attr('id')+']').html("-");
        });
        $('.collapse').on('hide.bs.collapse', function () {
            $('span[data-target=#'+$(this).attr('id')+']').html("+");
        });
    });
</script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php echo $google_analytics; ?>
</head>
<body class="common-home page-home layout-fullwidth">
<div class="row-offcanvas row-offcanvas-left">
<div id="page">
<!-- navigation-->
<nav id="topbar">
  <div class="container">    
	<div class="row">
  	 <div class="col-lg-10 col-md-10 col-sm-10 col-xs-12 center-sm">
	  <div class="login hidden-sm hidden-xs pull-left">
	   <ul class="links pull-right">
		<?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i class="fa fa-pencil"></i><span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span></a></li>
            <!--  <li><a href="<?php //echo $order; ?>" title="<?php //echo $text_order; ?>"><i class="fa fa-book"></i><span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_order; ?></span></a></li>
            <li><a href="<?php //echo $transaction; ?>" title="<?php //echo $text_transaction; ?>"><i class="fa fa-lastfm"></i><span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_transaction; ?></span></a></li>
            <li><a href="<?php //echo $download; ?>" title="<?php //echo $text_download; ?>"><i class="fa fa-pencil"></i><span class="hidden-xs hidden-sm hidden-md"><?php //echo $text_download; ?></span></a></li>-->
            <li><a href="<?php echo $logout; ?>" title="<?php echo $text_logout; ?>"><i class="fa fa-lock"></i><span class="hidden-xs hidden-sm hidden-md"><?php echo $text_logout; ?></span></a></li>
        <?php } else { ?>		
			<li><a href="<?php echo $register; ?>" title="<?php echo $text_register; ?>"><i class="fa fa-pencil"></i><span class="hidden-xs hidden-sm"><?php echo $text_register; ?></span></a></li>
			<li><a href="<?php echo $login; ?>" title="<?php echo $text_login; ?>"><i class="fa fa-unlock"></i><span class="hidden-xs hidden-sm"><?php echo $text_login; ?></span></a></li>
		<?php } ?>
	    </ul>
  	    </div>
		<ul class="links hidden-sm hidden-xs pull-left">
			<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm"><?php echo $text_wishlist; ?></span></a></li>
			<li><a href="<?php echo $compare; ?>" id="wishlist-total" title="<?php echo $text_compare; ?>"><i class="fa fa-angle-double-left"></i><i class="fa fa-angle-double-right"></i> <span class="hidden-xs hidden-sm"><?php echo $text_compare; ?></span></a></li>
			<!--<li><a href="<?php //echo $shopping_cart; ?>" title="<?php //echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm"><?php //echo $text_shopping_cart; ?></span></a></li>
			<li><a href="<?php //echo $checkout; ?>" title="<?php //echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm"><?php //echo $text_checkout; ?></span></a></li>-->
        </ul> 	    
		<?php echo $currency; ?>
        <?php echo $language; ?> 
        <div class="show-mobile hidden-lg hidden-md pull-left">
					<div class="btn-group ">
						  <button type="button" class=" btn-dropdown dropdown-toggle" data-toggle="dropdown">
						   <i class="fa fa-list"></i>
						  </button>
						  <ul class="dropdown-menu" role="menu">
		  						<li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span><?php echo $text_wishlist; ?></span></a></li>
								<li><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>"><i class="fa fa-user"></i><span><?php echo $text_account; ?></span></a></li>								
								<!-- <li><a href="<?php //echo $shopping_cart; ?>" title="<?php //echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span><?php //echo $text_shopping_cart; ?></span></a></li> -->
								<?php if ($logged) { ?>									
									<!--  <li><a href="<?php //echo $order; ?>" title="<?php //echo $text_order; ?>"><i class="fa fa-book"></i><span><?php //echo $text_order; ?></span></a></li>
									<li><a href="<?php //echo $transaction; ?>" title="<?php //echo $text_transaction; ?>"><i class="fa fa-lastfm"></i><span><?php //echo $text_transaction; ?></span></a></li>
									<li><a href="<?php //echo $download; ?>" title="<?php //echo $text_download; ?>"><i class="fa fa-pencil"></i><span><?php //echo $text_download; ?></span></a></li>-->
									<li><a href="<?php echo $logout; ?>" title="<?php echo $text_logout; ?>"><i class="fa fa-lock"></i><span><?php echo $text_logout; ?></span></a></li>
								<?php } else { ?>		
									<li><a href="<?php echo $register; ?>" title="<?php echo $text_register; ?>"><i class="fa fa-pencil"></i><span><?php echo $text_register; ?></span></a></li>
									<li><a href="<?php echo $login; ?>" title="<?php echo $text_login; ?>"><i class="fa fa-unlock"></i><span><?php echo $text_login; ?></span></a></li>
								<?php } ?>
						  </ul>
					</div>
		</div>
  	  </div>	  
  	  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-12 center-sm hidden-sm hidden-xs">
  				<?php echo $search; ?>
  	
	</div>
	<!-- row --> 
   </div>  
   <!-- container -->  
  </div>
</nav>

<header id="header-main">
  <div class="container">      
   <div class="header-wrap">
    <div class="pull-left wrap-logo">
      <div id="logo-theme" class="logo-store">        
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>">
		  <img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
		  <div id="logo-org" class="pull-right hidden-lg hidden-md"><h4><?php echo $data['name'];?></h4></div>		  
	   <!-- logo-store -->           	   
      </div>	  
      <!-- pull-left wrap-logo --> 	  
     </div> 
	 <?php if ($categories) { ?>
	 <div class="pull-left wrap-menu"> 
	  <div id="mainnav"> 
       <div class="navbar-inverse">	
	   <button data-toggle="offcanvas" class="btn btn-primary canvas-menu hidden-lg hidden-md" type="button">
						<span class="fa fa-bars"><?php echo $text_category; ?></span></button>		
       <div class="megamenu">	         
		<div class="navbar">
		  <div id="mainmenutop" class="megamenu" role="navigation">
	        <div class="navbar-header">
	          <a href="javascript:;" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		     </a>
			 <div class="collapse navbar-collapse navbar-ex1-collapse">
			  <ul class="nav navbar-nav megamenu">
				<?php foreach ($categories as $category) { ?>
				<?php if ($category['children']) { ?>
				<li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
				<div class="dropdown-menu">
				<div class="dropdown-inner">
				<?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
				<ul class="list-unstyled">
					<?php foreach ($children as $child) { ?>
					<li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
					<?php } ?>
				</ul>
				<?php } ?>
                </div>
				<a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
				</li>
				<?php } else { ?>
				<li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
				<?php } ?>
				<?php } ?>
			  </ul>
			 <!-- collapse navbar-collapse navbar-ex1-collapse -->
			 </div>
			 <!-- navbar-header -->
		    </div>
	      </div>
	    </div>
	 <!-- megamenu -->
	 </div>
	 <!-- navbar-inverse -->
    </div>
	<!-- mainnav -->
  </div>
  <!-- pull-left wrap-menu -->
</div>
<?php } ?>

<div class="header-right pull-right wrap-cart hidden-xs hidden-sm">
   <div class="cart-top">     
	 <?php //echo $cart; ?>	 
    </div>
   </div>
  </div> 
    <!-- container -->
  </div> 
</header>
<div class="sidebar-offcanvas  hidden-md hidden-lg">
      <div class="offcanvas-inner panel panel-offcanvas">
          <div class="offcanvas-heading panel-heading">
              <button type="button" data-toggle="offcanvas"> <span class="fa fa-times"></span></button>
          </div>
          <div class="offcanvas-body panel-body">
               <div class="box category highlighted">
          <div class="box-heading"><span><?php echo $text_category; ?></span></div>
          <div class="box-content">
          <ul id="accordion" class="box-category list-group accordion">
		  <?php foreach ($categories as $category) { ?>				
			<li class="list-group-item accordion-group">
			   <a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>				
		  <?php } ?>            
          </ul>
  </div>
</div>
</div>
          <div class="offcanvas-footer panel-footer">
              <div class="input-group" id="offcanvas-search">
                <?php echo $search; ?>
              </div>
          </div>
       </div> 
 </div>  
 <div id="content"></div>




