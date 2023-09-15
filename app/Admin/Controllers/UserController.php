<?php

namespace App\Admin\Controllers;

use App\Models\User;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use App\Helpers\ENC ;
class UserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'User';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User());

        $grid->column('name', __('Name'))->display(function($name){
            $user  = User::where('name',$name)->first() ;
            $enc   = ENC::encode( $user->email ) ;
            // $name = "asd" ;
            $link  = "http://$name.".config("helpers")["saas_domain"]."/login/login_sso/".$enc ;
            return "<a href=$link target=_blank> $name</a>" ;
        });

        $grid->column('email', __('Email'));
        
        $grid->column('email_verified_at', __('Email verified at'))->display(function($date){
            if($date)
                return date_format(  date_create( $date ),"d/m/y") ;
            return "not varified" ;
                // return getDate( strtotime( $date )) ;
        });
        
        $grid->column('is_disabled',__('Status'))->display(function($status){
            return $status ? 'Blocked' : 'Active' ;
        }) ;
        
        $grid->column('id', __('payment'))->display(function($id){
            
            $user =  User::find($id);
            
            if($user->stripe_id && !$user->payment_block) {
                return 'Active' ;
            }
            return 'Inactive' ;
        });

        $grid->column('stripe_id', __('Stripe id'));
        $grid->column('card_brand', __('Card brand'));
        $grid->column('card_last_four', __('Card last four'));

       $grid->column('trial_ends_at', __('Trial ends at'));
       
        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(User::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('email', __('Email'));
        $show->field('email_verified_at', __('Email verified at'));
        $show->field('is_disabled', __('Status'));
        // $show->field('password', __('Password'));
        $show->field('remember_token', __('Remember token'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('stripe_id', __('Stripe id'));
        $show->field('card_brand', __('Card brand'));
        $show->field('card_last_four', __('Card last four'));
        $show->field('trial_ends_at', __('Trial ends at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new User());

        $form->text('name', __('Name'));
        $form->email('email', __('Email'));
        $form->datetime('email_verified_at', __('Email verified at'))->default(date('Y-m-d H:i:s'));
        $form->radio('is_disabled', __('Status'))->options(['0' => 'Active', '1'=> 'Block'])->default('0')->stacked();
        $form->password('password', __('Password'));
        $form->text('remember_token', __('Remember token'));
        $form->text('stripe_id', __('Stripe id'));
        $form->text('card_brand', __('Card brand'));
        $form->text('card_last_four', __('Card last four'));
        $form->datetime('trial_ends_at', __('Trial ends at'))->default(date('Y-m-d H:i:s'));

        return $form;
    }
}
