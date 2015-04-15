<section class="row">
    <div class="photo-grid">
        <?php
            $image = get_field('image');
            if (!empty($image)):
        ?>
            <a href="<?php echo $image['url']; ?>" rel="lightbox" class="col-2"><img src="<?php echo $image['url']; ?>" alt="Example photo"></a>
        <?php endif; ?>
        <?php
            $image2 = get_field('image2');
            if (!empty($image2)):
        ?>
            <a href="<?php echo $image2['url']; ?>" rel="lightbox" class="col-2"><img src="<?php echo $image2['url']; ?>" alt="Example photo"></a>
        <?php endif; ?>
        <?php
            $image3 = get_field('image3');
            if (!empty($image2)):
        ?>
            <a href="<?php echo $image3['url']; ?>" rel="lightbox" class="col-1"><img src="<?php echo $image3['url']; ?>" alt="Example photo"></a>
        <?php endif; ?>
    </div>
</section>