<?php if ($modules) { ?>
<column id="column-left" class="sidebar hidden-xs">
  <?php foreach ($modules as $module) { ?>
  <?php echo $module; ?>
  <?php } ?>
</column>
<?php } ?>