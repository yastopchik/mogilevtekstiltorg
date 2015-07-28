<div id="slideshow">
<div class="container">
<div class="wrapper"> 
  <a id="slide-next" href="#"></a> 
  <a id="slide-prev" href="#"></a>
<?php $i=1;?>
<div id="slider">
  <?php foreach ($banners as $banner) { ?>
  <?php if($i==1){?>
  <div class="slide  cs-activeSlide">
  <?php }else{?>
  <div class="slide">
  <?php }?>
    <?php if ($banner['link']) { ?>
    <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"/></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>"/>
    <?php } ?>
  </div>
  <?php 
  $i++;
  }?> 
  <div class="caption"></div>
</div>  
</div>  
</div>
</div>  


