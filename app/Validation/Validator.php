<?php

namespace App\Validation;

use Respect\Validation\Validator as Respect;
use Respect\Validation\Exceptions\NestedValidationException;

/**
 *
 */
class Validator //extends AnotherClass
{
    public function validate ($request, array $rules) {
          unset($_SESSION['errors']);
          
          foreach ($rules as $field => $rule) {
              try {
                  $rule->setName(ucfirst($field))->assert($request->getParam($field));
              } catch (NestedValidationException $e) {
                  $this->errors[$field] = $e->getMessages();
              }
          }

          $_SESSION['errors'] = $this->errors;
          return $this;
    }

    public function failed () {
        return !empty($this->errors);
    }

}
