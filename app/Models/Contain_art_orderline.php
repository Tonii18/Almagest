<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contain_art_orderline extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'contain_art_orderlines';
    protected $fillable = ['article_id','order_line_id'];

    //Article - Contain_Art_OrderLine (1-N) Relationship

    //Order_Line - Contain_Art_OrderLine (1-N) Relationship
}
