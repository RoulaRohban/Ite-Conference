<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Conference extends Model
{
    use Translatable;
    protected $translatable = ['name', 'bio', 'country', 'cover_image', 'logo'];
}
