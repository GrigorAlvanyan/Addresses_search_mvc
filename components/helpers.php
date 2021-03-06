<?php

if (!function_exists('dd')) {
    function dd($arg) {
        echo '<pre>';
        print_r($arg);
        die;
    }
}

if (!function_exists('view')) {
    function view($view, $args)
    {
        extract($args);

        include '../views/' . $view;
        die;
    }
}

if (!function_exists('loadTemplate')) {
    function loadTemplate($smarty, $templateName)
    {
        $smarty->display($templateName . TemplatePostfix);
        die;
    }
}
