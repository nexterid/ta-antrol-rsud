<?php
foreach($output->css_files as $file): ?>
    <link type="text/css" rel="stylesheet" href="<?php echo $file; ?>" />
<?php endforeach; ?>

<?php foreach($output->js_files as $file): ?>
    <script src="<?php echo $file; ?>"></script>
<?php endforeach; ?>
<style type='text/css'>
    body
    {
        font-family: Arial;
        font-size: 14px;
    }
    a {
        text-decoration: none;
        font-size: 14px;
    }
    a:hover
    {
        text-decoration: underline;
    }
    input, option, select{
        min-height: 30px;
    }
</style>
<?php echo $output->output; ?>
<div style="min-height: 100px;"></div>
