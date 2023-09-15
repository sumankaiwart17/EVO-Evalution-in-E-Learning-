<?php

namespace App\Admin\Controllers;

use App\Models\User;
use App\Models\UserPayment;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
class SmsHistoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'SMS History';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {

        // return "ok";
        return view('history.sms');
        // $grid = new Grid(new UserPayment());
        // // $grid->column('ip',__("IP")) ;
        // $grid->column('user_id',__('User'))->display(function($user_id){
        //     $name = "" ;
        //     if($user = User::find($user_id)){
        //        $name =  $user->name .'  <i>['. $user->email . ']</i>' ;
        //     }  
        //     return $name  ;
        // });
        // $grid->column('payment_of', __('Date '))->display(function($date){
        //     if($date)
        //         return date_format(  date_create( $date ),"d/m/y") ;
        //     return "not avaiable" ;
        //         // return getDate( strtotime( $date )) ;
        // });
        // $grid->column('amount',__('Amount'))->display(function($arg){
        //     return ' '. $arg . ' USD' ;
        // }) ;
        // return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        // $show = new Show(BlockedIP::findOrFail($id));

        // $show->field('ip', __('IP'));


        // return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        // $form = new Form(new BlockedIP());

        // $form->text('ip', __('IP'));

        // return $form;
    }
}
