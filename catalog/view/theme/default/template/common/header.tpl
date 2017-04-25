<!DOCTYPE html>

<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?php echo $title; ?></title>
  <base href="<?php echo $base; ?>" />
  <?php if ($description) { ?>
  <meta name="description" content="<?php echo $description; ?>" />
  <?php } ?>
  <?php if ($keywords) { ?>
  <meta name="keywords" content= "<?php echo $keywords; ?>" />
  <?php } ?>
  <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
  <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
  <link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
  <link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
  <link href="catalog/view/theme/default/stylesheet/style.css" rel="stylesheet">
  <?php foreach ($styles as $style) { ?>
  <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
  <?php } ?>
  <?php foreach ($analytics as $analytic) { ?>
  <?php echo $analytic; ?>
  <?php } ?>
</head>
<body class="<?php echo $class; ?>">
<!-- <nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-sm-3"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
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
    </div>
  </nav> -->
<!-- </div>
  <?php } ?> -->

  <div id="top-head">
    <div class="container">
      <div class="row">
        <div class="lang">
          <?php echo $language; ?>
        </div>
        <div class="social social-head">
          <ul>
            <li><img src="catalog/view/theme/default/image/icon-insta2.png"></li>
            <li><img src="catalog/view/theme/default/image/icon-insta2.png"></li>
            <li><img src="catalog/view/theme/default/image/icon-fb2.png"></li>
          </ul>
        </div>
        <div class="account">
          <ul>
           <?php if ($logged) { ?>
           <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
           <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
           <?php } else { ?>
           <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
           <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
           <?php } ?>
         </ul>
       </div>
        <div id="wishlist">
        <a href="<?php echo $wishlist; ?>">
        <img src="catalog/view/theme/default/image/icon-heart.png">
        </a>
      </div>
       <div id="top-cart">
       <a href="<?php echo $checkout; ?>">
        <img src="catalog/view/theme/default/image/icon-cart.png">
        </a>
      </div>
      <div id="search">
         <?php echo $search; ?>
      </div>


    </div>
  </div>
</div>
<div class="logo">
 <a href="<?php echo $home; ?>">
  <img src="catalog/view/theme/default/image/logo.png">
</a>
</div>
<div id="nav">
  <div class="container">
    <div class="row">

      <div class="col-lg-12">
        <ul class="first-nav">
          <li><a href="<?php echo $home; ?>">Главная</a></li>
            <li id="submenuLi">
              <a href="#"> Выкройки</a>
              <div id="submenu">
                <ul>
                  <?php if ($categories) { ?>
                  <?php foreach ($categories as $category) { ?>
                  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>

                  <?php } ?>
                  <?php } ?>
                </ul>
              </div>
            </li>

            <li><a href="news.html"> Новости</a></li>
            <li><a href="<?php echo $contact; ?>">Контакты</a></li>
            <li id="submenuLi2">
              <a href="#"> Технология пошива</a>
              <div id="submenu2">
                <ul>
                  <li><a href="catalog.html">Название раздела</a></li>
                  <li><a href="catalog.html">Название раздела</a></li>
                  <li><a href="catalog.html">Название раздела</a></li>
                  <li><a href="catalog.html">Название раздела</a></li>
                  <li><a href="catalog.html">Название раздела</a></li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
        
      </div>
    </div>
  </div>
  <div id="nav-mob">
    <div id="nav-mob-button"><div></div><div></div></div>
    <ul>
      <li> <a href="#"> Главная</a></li>
      <li>
        <a href="catalog.htm"> Выкройки</a>
        <div class="sub-menu">
          <ul>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
          </ul>
        </div>
      </li>
      <li><a href="news.html"> Новости</a></li>
      <li><a href="#"> Контакты</a></li>
      <li><a href="#"> Технология пошива</a>
        <div class="sub-menu">
          <ul>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
            <li><a href="catalog.html">Название раздела</a></li>
          </ul>
        </div>
      </li>
    </ul>
  </div>
