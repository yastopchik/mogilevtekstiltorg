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
      <div class="table-responsive">
      <table class="table table-bordered">
	    <thead>
		  <tr>
			<td class="text-left"><?php echo $text_image; ?></th>
			<td class="text-left"><?php echo $text_title; ?></th>
			<td class="text-left"><?php echo $text_description; ?></th>
			<td class="text-left"><?php echo $text_date; ?></th>
			<td class="text-center"><?php echo $text_view; ?></th>
		  </tr>
		</thead>
		<tbody>
		<?php if ($all_news) { ?>
		<?php foreach ($all_news as $news) { ?>
		  <tr>
		  <?php if (!empty($news['image'])) { ?>
		   <td class="text-left"><img src="<?php echo $news['image']; ?>" /></td>
		   <?php } else {?>
		   <td class="text-left"><a href="<?php echo $news['view']; ?>" title="No image"><span class="fa fa-file-image-o"></span></a></td>
		   <?php }?>
		   <td class="text-left"><?php echo $news['title']; ?></td>
		   <td class="text-left"><?php echo $news['description']; ?></td>
		   <td class="text-left"><?php echo $news['date_added']; ?></td>
		   <td class="text-center"><a href="<?php echo $news['view']; ?>"><span class="fa fa-eye icon-cart"></span></a></td>
		  </tr>
		<?php } ?>
		<?php } else { ?>
            <tr>
              <td class="text-center" colspan="5"><?php echo $text_empty; ?></td>
            </tr>
            <?php } ?>
		</tbody>
	  </table>
	  </div>
	  <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
        <div class="col-sm-6 text-right"><?php echo $results; ?></div>
      </div>
	  <?php echo $content_bottom; ?></div>
	   </section>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?> 