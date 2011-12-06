<div id="news">
	<div class="cmsComponent"><?php e($this->element('loadCMSContent')); ?></div>

	<?php
	foreach ($news as $news):
	?>
    <p class="contentParagraph"><?php echo $news['News']['contentParagraph']; ?></p>
    <?php endforeach; ?>
</div>