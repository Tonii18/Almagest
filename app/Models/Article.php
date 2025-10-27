<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Article extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'articles';
    protected $fillable = ['name', 'description', 'price_min', 'price_max', 'color_name', 'weight', 'size', 'family_id', 'deleted'];

    //Family - Article (1-N) Relationship

    //Article - Contain_Art_OrderLine (1-N) Relationship

}
