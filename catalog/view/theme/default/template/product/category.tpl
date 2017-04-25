<?php echo $header; ?>
<div class="breadcrumbs">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <ul>
          <?php foreach ($breadcrumbs as $breadcrumb) { ?>
          <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2 style="text-align: center;"><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row">

        <?php if ($description) { ?>
        <div class="col-sm-10"><?php echo $description; ?></div>
        <?php } ?>
      </div>
      <hr>
      <?php } ?>
      <?php if ($categories) { ?>
      <?php if (count($categories) <= 5) { ?>
      <div class="row">
        <div class="subcategory-catalog">
          <?php foreach ($categories as $category) { ?>
          <div class="subcategory-catalog-item">
            <a href="<?php echo $category['href']; ?>">
              <?php echo $category['name']; ?>
            </a>
          </div>
          <?php } ?>
        </div>
      </div>
      <?php } else { ?>
      <div class="row">
        <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $categories) { ?>
        <div class="col-sm-3">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <?php } ?>
      <?php if ($products) { ?>
      <div class="row">
        <?php foreach ($products as $product) { ?>
        <div class="col-md-4">
          <a href="<?php echo $product['href']; ?>">
            <div class="prod-item">
              <div class="prod-item-inside">
                <div class="index-catalog-item-hover">
                </div>
                <img src="<?php echo $product['thumb']; ?>">
              </div>
              <p class="prod-name">
                <?php echo $product['name']; ?>
              </p>
              <img src="catalog/view/theme/default/image/tovar-line.png">
              <p class="prod-price"> <?php echo $product['price']; ?></p>
            </div>
          </a>
        </div>

        <?php } ?>
      </div>
      <div class="row">
        <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
      </div>
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
      <?php echo $column_right; ?></div>
    </div>
    <?php echo $footer; ?>
