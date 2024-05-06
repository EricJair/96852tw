<?php

return function (array $settings) : array {
    $settings['db']['host'] = 'localhost';
    $settings['db']['database'] = 'biblioteca';
    $settings['db']['username'] = 'bibliotec_user'; 
    $settings['db']['password'] = 'bibl1@';

    $settings['env'] = 'dev'; 

    return $settings;
};
