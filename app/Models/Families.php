<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Families extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = 'families';
    protected $fillable = ['name','profit_margin','deleted'];

    //Family - Article (1-N) Relationship
}
