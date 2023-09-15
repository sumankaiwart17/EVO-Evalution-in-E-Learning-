<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Cashier\Billable;
class User extends Authenticatable implements MustVerifyEmail 
{
    use HasFactory, Notifiable , Billable ;
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'password_2' , 'is_disabled' , 'payment_block'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token', 'password_2'
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function detail(){
        return $this->hasOne('App\Models\UserDetail','user_id') ;
    }

    public function payments() {
        return $this->hasMany('App\Models\UserPayment','user_id') ;
    }

    public function domains(){
        return $this->hasMany('App\Models\UserDomain','user_id') ;
    }
}
