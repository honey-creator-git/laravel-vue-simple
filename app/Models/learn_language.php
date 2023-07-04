<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class learn_language extends Model
{
    use HasFactory;
    protected $fillable = ['id', 'en_description', 'se_description', 'image_url',];
}
