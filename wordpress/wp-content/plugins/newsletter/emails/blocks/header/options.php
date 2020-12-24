<?php

/* @var $options array contains all the options the current block we're ediging contains */
/* @var $controls NewsletterControls */
/* @var $controls NewsletterFields */
?>

<p>This block uses the <a href="?page=newsletter_main_info" target="_blank">global company info</a>.</p>

<?php
$fields->select('layout', __('Layout', 'newsletter'), ['' => __('Default', 'newsletter'), 'logo' => __('Only the logo', 'newsletter')])
?>

<?php $fields->font() ?>

<?php $fields->block_commons() ?>
