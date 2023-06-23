<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit4bd5c21437484f79f5f647a409949d4d
{
    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Composer\\InstalledVersions' => __DIR__ . '/..' . '/composer/InstalledVersions.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit4bd5c21437484f79f5f647a409949d4d::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit4bd5c21437484f79f5f647a409949d4d::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit4bd5c21437484f79f5f647a409949d4d::$classMap;

        }, null, ClassLoader::class);
    }
}
