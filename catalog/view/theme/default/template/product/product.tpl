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
      <div class="row">
        <div class="col-md-5">
          <div class="row">

            <?php if ($thumb || $images) { ?>
            <ul class=" img-thumbnails">
             <?php if ($images) { ?>
             <div class="col-xs-2">
              <?php foreach ($images as $image) { ?>
              <li class="image-additional"><a class="thumbnail" href="<?php echo $image['popup']; ?>" title="<?php echo $heading_title; ?>"> <img src="<?php echo $image['thumb']; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
              <?php } ?>
                 </div>
              <?php } ?>
              <?php if ($thumb) { ?>
               <div class="col-xs-10">
              <li><a class="thumbnail" href="<?php echo $popup; ?>" title="<?php echo $heading_title; ?>"><img src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>" alt="<?php echo $heading_title; ?>" /></a></li>
              </div>
              <?php } ?>
            </ul>
            <?php } ?>
            
          </div>
        </div>
        <div class="col-md-4">
          <h1><?php echo $heading_title; ?></h1>
          <ul class="list-unstyled">

            <li><?php echo $text_model; ?> <span style="color: #dea240"><?php echo $model; ?></span></li>
            <?php if ($reward) { ?>
            <li><?php echo $text_reward; ?> <?php echo $reward; ?></li>
            <?php } ?>
            <li><?php echo $text_stock; ?> <?php echo $stock; ?></li>
          </ul>
          <?php if ($price) { ?>
          <ul class="list-unstyled">
            <?php if (!$special) { ?>
            <li>
              <h2><?php echo $price; ?></h2>
            </li>
            <?php } else { ?>
            <li><span style="text-decoration: line-through;"><?php echo $price; ?></span></li>
            <li>
              <h2><?php echo $special; ?></h2>
            </li>
            <?php } ?>
            
          </ul>
          <?php } ?>
          <p class="product-body">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultricies quis augue eu facilisis. Vestibulum tincidunt tellus cursus ante finibus, sed ornare metus elementum. Aliquam massa metus, mollis sit amet luctus eget, pellentesque non nulla. Quisque auctor, lectus quis blandit mattis, mauris mi dignissim lorem, vitae luctus mauris erat vel ante. Donec ex nisl, malesuada vel nibh sed, viverra ultrices lacus. 
          </p>
          <p class="title-sm">Выберите размер</p>
          <div class="select-size normal-size size-active">Стандартный</div>
          <div class="select-size extra-size">Индивидуальный</div>
          <div class="clear"></div>
          <div class="product-to-cart">
            <div class="button-wishlist" onclick="wishlist.add('<?php echo $product_id; ?>')">
              В список желаний
            </div>
            <div id="button-cart" class="button-buy" >
              В корзину
            </div>
          </div>
        </div>
        <div class="col-md-3">
          <p>Для заказа заполните поля ниже:</p>
          <div id="normal-size-block">
            <p>Выберите размер</p>
            <?php if ($options) { ?>
            <?php foreach ($options as $option) { ?>
            <?php if ($option['type'] == 'select') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <select name="option[<?php echo $option['product_option_id']; ?>]" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control">
                <option value=""><?php echo $text_select; ?></option>
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <option value="<?php echo $option_value['product_option_value_id']; ?>"><?php echo $option_value['name']; ?>
                  <?php if ($option_value['price']) { ?>
                  (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                  <?php } ?>
                </option>
                <?php } ?>
              </select>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'radio') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="radio">
                  <label>
                    <input type="radio" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>                    
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'checkbox') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label"><?php echo $option['name']; ?></label>
              <div id="input-option<?php echo $option['product_option_id']; ?>">
                <?php foreach ($option['product_option_value'] as $option_value) { ?>
                <div class="checkbox">
                  <label>
                    <input type="checkbox" name="option[<?php echo $option['product_option_id']; ?>][]" value="<?php echo $option_value['product_option_value_id']; ?>" />
                    <?php if ($option_value['image']) { ?>
                    <img src="<?php echo $option_value['image']; ?>" alt="<?php echo $option_value['name'] . ($option_value['price'] ? ' ' . $option_value['price_prefix'] . $option_value['price'] : ''); ?>" class="img-thumbnail" /> 
                    <?php } ?>
                    <?php echo $option_value['name']; ?>
                    <?php if ($option_value['price']) { ?>
                    (<?php echo $option_value['price_prefix']; ?><?php echo $option_value['price']; ?>)
                    <?php } ?>
                  </label>
                </div>
                <?php } ?>
              </div>
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'text') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
            </div>
            <?php } ?>
            <?php if ($option['type'] == 'textarea') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <textarea name="option[<?php echo $option['product_option_id']; ?>]" rows="5" placeholder="<?php echo $option['name']; ?>" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control"><?php echo $option['value']; ?></textarea>
            </div>
            <?php } ?>

            <?php if ($option['type'] == 'date') { ?>
            <div class="form-group<?php echo ($option['required'] ? ' required' : ''); ?>">
              <label class="control-label" for="input-option<?php echo $option['product_option_id']; ?>"><?php echo $option['name']; ?></label>
              <div class="input-group date">
                <input type="text" name="option[<?php echo $option['product_option_id']; ?>]" value="<?php echo $option['value']; ?>" data-date-format="YYYY-MM-DD" id="input-option<?php echo $option['product_option_id']; ?>" class="form-control" />
                <span class="input-group-btn">
                  <button class="btn btn-default" type="button"><i class="fa fa-calendar"></i></button>
                </span></div>
              </div>
              <?php } ?>

              <?php } ?>
              <?php } ?>
            </div>
            <div id="extra-size-block">
              <p>Название мерки</p>
              <input type="text" name="">
              <p>Название мерки</p>
              <input type="text" name="">
              <p>Название мерки</p>
              <input type="text" name="">
              <p>Название мерки</p>
              <input type="text" name="">

              <p>Название мерки</p>
              <input type="text" name="">
              <p>Название мерки</p>
              <input type="text" name="">
            </div>
          </div>
        </div>


            <div class="main-product-info">
              <div class="row">
                <div class="col-md-12" id="info-block">
                  <img src="catalog/view/theme/default/image/vintage.png">
                  <p><?php echo $description; ?></p>
                </div>
                <div id="leave-comment">
                  <p>Показать - <?php echo $reviews; ?></p>
                  <img src="catalog/view/theme/default/image/tovar-line.png">
                </div>

                <div class="col-md-12" id="review-block">
                   <div class="comments comment-form">
                    <?php if ($review_status) { ?>
                    <div class="tab-pane" id="tab-review">
                      <form class="form-horizontal" id="form-review">
                        <div id="review"></div>
                        <h2><?php echo $text_write; ?></h2>
                        <?php if ($review_guest) { ?>
                        <div class="form-group required">
                          <div class="col-sm-12">

                            <input type="text" name="name" value="<?php echo $customer_name; ?>" id="input-name" placeholder="<?php echo $entry_name; ?>" />
                          </div>
                        </div>
                        <div class="form-group required">
                          <div class="col-sm-12">
                            <textarea name="text" rows="5" id="input-review" placeholder="<?php echo $entry_review; ?>"></textarea>

                          </div>
                        </div>
                        <div class="form-group required review-radio">
                         <div class="col-sm-12">
                          <p ><?php echo $entry_rating; ?></p>
                          <p><?php echo $entry_bad; ?></p>
                          <input id="radio1" type="radio" name="rating" value="1" />
                          <label for="radio1">1</label>
                          <input id="radio2" type="radio" name="rating" value="2" />
                          <label for="radio2">2</label>
                          <input id="radio3" type="radio" name="rating" value="3" />
                          <label for="radio3">3</label>
                          <input id="radio4" type="radio" name="rating" value="4" />
                          <label for="radio4">4</label>
                          <input id="radio5" type="radio" name="rating" value="5" />
                          <label for="radio5">5</label>
                          <p><?php echo $entry_good; ?></p></div>

                        </div>
                        <?php echo $captcha; ?>
                        <div class="buttons clearfix">
                          <div class="pull-right">
                            <button type="button" id="button-review" data-loading-text="<?php echo $text_loading; ?>" class="button-buy"><?php echo $button_continue; ?></button>
                          </div>
                        </div>
                        <?php } else { ?>
                        <?php echo $text_login; ?>
                        <?php } ?>
                      </form>
                    </div>
                    <?php } ?>

                  </div>
                </div>
              </div>
              <?php if ($products) { ?>
            </div>
          </div>
        </div>
        <h3 class="main-title"><?php echo $text_related; ?></h3>
        <div class="container">
          <div class="row">

            <?php foreach ($products as $product) { ?>


            <div class="col-md-3">
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
          <?php } ?>
          <?php if ($tags) { ?>
          <p><?php echo $text_tags; ?>
            <?php for ($i = 0; $i < count($tags); $i++) { ?>
            <?php if ($i < (count($tags) - 1)) { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>,
            <?php } else { ?>
            <a href="<?php echo $tags[$i]['href']; ?>"><?php echo $tags[$i]['tag']; ?></a>
            <?php } ?>
            <?php } ?>
          </p>
          <?php } ?>
          <?php echo $content_bottom; ?></div>
          <?php echo $column_right; ?></div>
        </div>
        <script type="text/javascript"><!--
          $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
           $.ajax({
            url: 'index.php?route=product/product/getRecurringDescription',
            type: 'post',
            data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
            dataType: 'json',
            beforeSend: function() {
             $('#recurring-description').html('');
           },
           success: function(json) {
             $('.alert, .text-danger').remove();

             if (json['success']) {
              $('#recurring-description').html(json['success']);
            }
          }
        });
         });
         //--></script>
         <script type="text/javascript"><!--
          $('#button-cart').on('click', function() {
           $.ajax({
            url: 'index.php?route=checkout/cart/add',
            type: 'post',
            data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
            dataType: 'json',
            beforeSend: function() {
             $('#button-cart').button('loading');
           },
           complete: function() {
             $('#button-cart').button('reset');
           },
           success: function(json) {
             $('.alert, .text-danger').remove();
             $('.form-group').removeClass('has-error');

             if (json['error']) {
              if (json['error']['option']) {
               for (i in json['error']['option']) {
                var element = $('#input-option' + i.replace('_', '-'));

                if (element.parent().hasClass('input-group')) {
                 element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
               } else {
                 element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
               }
             }
           }

           if (json['error']['recurring']) {
             $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
           }

				// Highlight any found errors
				$('.text-danger').parent().addClass('has-error');
			}

			if (json['success']) {
				$('.breadcrumb').after('<div class="alert alert-success">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

				$('#cart > button').html('<span id="cart-total"><i class="fa fa-shopping-cart"></i> ' + json['total'] + '</span>');

				$('html, body').animate({ scrollTop: 0 }, 'slow');

				$('#cart > ul').load('index.php?route=common/cart/info ul li');
			}
		},
    error: function(xhr, ajaxOptions, thrownError) {
      alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
    }
  });
         });
         //--></script>
         <script type="text/javascript"><!--
          $('.date').datetimepicker({
           pickTime: false
         });

          $('.datetime').datetimepicker({
           pickDate: true,
           pickTime: true
         });

          $('.time').datetimepicker({
           pickDate: false
         });

          $('button[id^=\'button-upload\']').on('click', function() {
           var node = this;

           $('#form-upload').remove();

           $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

           $('#form-upload input[name=\'file\']').trigger('click');

           if (typeof timer != 'undefined') {
             clearInterval(timer);
           }

           timer = setInterval(function() {
            if ($('#form-upload input[name=\'file\']').val() != '') {
             clearInterval(timer);

             $.ajax({
              url: 'index.php?route=tool/upload',
              type: 'post',
              dataType: 'json',
              data: new FormData($('#form-upload')[0]),
              cache: false,
              contentType: false,
              processData: false,
              beforeSend: function() {
               $(node).button('loading');
             },
             complete: function() {
               $(node).button('reset');
             },
             success: function(json) {
               $('.text-danger').remove();

               if (json['error']) {
                $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
              }

              if (json['success']) {
                alert(json['success']);

                $(node).parent().find('input').val(json['code']);
              }
            },
            error: function(xhr, ajaxOptions, thrownError) {
             alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
           }
         });
           }
         }, 500);
         });
         //--></script>
         <script type="text/javascript"><!--
          $('#review').delegate('.pagination a', 'click', function(e) {
            e.preventDefault();

            $('#review').fadeOut('slow');

            $('#review').load(this.href);

            $('#review').fadeIn('slow');
          });

          $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

          $('#button-review').on('click', function() {
           $.ajax({
            url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
            type: 'post',
            dataType: 'json',
            data: $("#form-review").serialize(),
            beforeSend: function() {
             $('#button-review').button('loading');
           },
           complete: function() {
             $('#button-review').button('reset');
           },
           success: function(json) {
             $('.alert-success, .alert-danger').remove();

             if (json['error']) {
              $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
            }

            if (json['success']) {
              $('#review').after('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

              $('input[name=\'name\']').val('');
              $('textarea[name=\'text\']').val('');
              $('input[name=\'rating\']:checked').prop('checked', false);
            }
          }
        });
         });

          $(document).ready(function() {
           $('.img-thumbnails').magnificPopup({
            type:'image',
            delegate: 'a',
            gallery: {
            enabled:true
           }
         });
         });
         </script>
         <?php echo $footer; ?>
