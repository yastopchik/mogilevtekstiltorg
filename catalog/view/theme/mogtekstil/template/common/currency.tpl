<?php if (count($currencies) > 1) { ?>
<div class="currency pull-left">
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="currency">
  <div class="btn-group">
    <button type="button" class="btn-dropdown dropdown-toggle hidden" data-toggle="dropdown">
    <?php foreach ($currencies as $currency) { ?>
    <?php if ($currency['code'] && $currency['code'] == $code) { ?>
    <strong>
    <?php echo $currency['code'];?>
    </strong>
    <?php } ?>
    <?php } ?>
    <span class="hidden-md"><?php echo $text_currency; ?></span> <i class="fa fa-angle-down"></i></button>	
    <ul>
      <?php foreach ($currencies as $currency) { ?>
      <?php if ($currency['code']!=$code) { ?>
      <?php if ($currency['symbol_left']) { ?>
      <li><button class="currency-select list-item" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['code']; ?></button></li>
      <?php } else { ?>
      <li><button class="currency-select list-item" type="button" name="<?php echo $currency['code']; ?>"><?php echo $currency['code']; ?></button></li>
      <?php } ?>
      <?php } ?>
      <?php } ?>
    </ul>
  </div>
  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
</div>
<?php } ?>
