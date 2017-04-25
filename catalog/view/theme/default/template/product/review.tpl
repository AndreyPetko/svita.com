<?php if ($reviews) { ?>
<?php foreach ($reviews as $review) { ?>

  <div class="coment-item">
    <div class="comment-name">
     <?php echo $review['author']; ?>
    </div>
    <div class="comment-text">
      <?php echo $review['text']; ?>
    </div>
  </div>
  <?php } ?>
  <div class="text-right"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <p><?php echo $text_no_reviews; ?></p>
  <?php } ?>
