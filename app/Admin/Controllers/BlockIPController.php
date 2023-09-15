<?php

namespace App\Admin\Controllers;


use App\Models\BlockedIP;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
class BlockIPController extends AdminController
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
        $grid = new Grid(new BlockedIP());
        $grid->column('ip',__("IP")) ;
        $grid->column('created_at', __('Date Blocked'))->display(function($date){
            if($date)
                return date_format(  date_create( $date ),"d/m/y") ;
            return "not varified" ;
                // return getDate( strtotime( $date )) ;
        });
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
        $show = new Show(BlockedIP::findOrFail($id));

        $show->field('ip', __('IP'));


        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new BlockedIP());

        $form->text('ip', __('IP'));

        return $form;
    }
}
