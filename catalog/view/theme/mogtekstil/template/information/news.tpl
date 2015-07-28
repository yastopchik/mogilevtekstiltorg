<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
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
      <h1><?php echo $heading_title; ?></h1>
	  <?php if ($image) { ?>
	  <div class="text-center">
	  <img src="<?php echo $image; ?>" alt="<?php echo $heading_title; ?>" />
	  </div>
	  <?php } ?>
	  <p><?php echo $description; ?></p>
	  <div class="buttons clearfix">
          <div class="pull-left"><a href="<?php echo $back; ?>" class="btn btn-default canvas-menu"><?php echo $button_back; ?></a></div>          
      </div>
	  <?php echo $content_bottom; ?></div>
	  </section>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 