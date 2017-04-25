<?php if (count($languages) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-language">

    <ul >
      <?php foreach ($languages as $language) { ?>
      <li><button class=" language-select" type="button" name="<?php echo $language['code']; ?>"> <?php echo $language['name']; ?></button></li>
      <?php } ?>
    </ul>

  <input type="hidden" name="code" value="" />
  <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
</form>
<?php } ?>
