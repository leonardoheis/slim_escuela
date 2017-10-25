<?php

namespace App\Validation\Exceptions;

use Respect\Validation\Exceptions\ValidationException;

/**
 *
 */
class UserAvailableException extends ValidationException
{
    public static $defaultTemplates = [
        self::MODE_DEFAULT => [
            self::STANDARD => 'User is already taken',
        ],
    ];

}
