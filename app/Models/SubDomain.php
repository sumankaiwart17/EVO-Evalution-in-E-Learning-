<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SubDomain extends Model
{
    use HasFactory;
    protected $table = "sub_domain";
    public $timestamps = false;
    // protected $fillable = [
    //      'id', 'date' , 'sub-domain', 'status'
    // ];
}
