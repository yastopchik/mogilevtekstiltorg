<footer id="footer"> 
   <div class="footer-center">
	<div class="container">
      <div class="footer-center-wrap">
      <div class="row">
      
      <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
      <div class="box contact-us">
      <div class="box-heading">
          <span><?php echo $text_contact_us; ?></span>          
      </div>
      <ul>
          <li><i class="icon fa fa-phone">  </i><span><?php echo '&nbsp'.$telephone; ?></span></li>
          <li><i class="icon fa fa-fax">  </i><span><?php echo '&nbsp'.$fax; ?></span></li>
          <li class="icon fa fa-envelope-o">  </i><span><?php echo $email; ?></span></li>
      </ul>
      </div>
      </div>
      
      <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
      <div class="box">
      <div class="box-heading">
          <span><?php echo $text_service; ?></span>          
      </div>
      <ul class="list">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      </ul>
      </div>
      </div>
      <?php if ($informations) { ?>
      <div class="column col-xs-12 col-sm-6 col-lg-3 col-md-3">
      <div class="box info">
      <div class="box-heading">
          <span><?php echo $text_information; ?></span>          
      </div>
      <ul class="list">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
      </ul>
      </div>
      </div>
      <?php } ?>   
      <div class="column col-xs-12 col-sm-6 col-lg-2 col-md-2">
      <div class="box">
      <div class="box-heading">
          <span><?php echo $text_extra; ?></span>          
      </div>
      <ul class="list">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>         
		  <li><a href="<?php echo $news; ?>"><?php echo $text_news; ?></a></li>          
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
      </ul>
      </div>
      </div>     
      <div class="column col-xs-12 col-sm-6 col-lg-3 col-md-3">
        <div class="box">
      <div class="box-heading">
          <span><?php echo $text_account; ?></span>          
      </div>
      <ul class="list">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $compare; ?>"><?php echo $text_compare; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>          
       </ul>
      </div>
    </div>
  </div>  
  </div>
  </div>
  </div>  
</footer>
<div id="powered">
  <div class="container">
    <div class="wrap-powered clearfix">
      <div class="copyright pull-left"><a href="http://mogilevtekstiltorg.by"><?php echo $powered; ?></a>
       <p><?php echo $comment . " " .$open. " ". $address; ?></p>
      </div>  
               
          </div>   
  </div>
  </div>
</div>
</div>
</body></html>