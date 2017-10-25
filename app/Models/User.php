<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 *
 */

class User extends Model
{
  protected $table = 'usuarios';

  protected $fillable = ['username','password'];

  /*function __construct(argument)
  {
    # code...
  }*/
}
