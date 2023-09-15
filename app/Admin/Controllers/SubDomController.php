<?php

namespace App\Admin\Controllers;

use App\Models\SubDom;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SubDomController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'SubDom';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()  //showing data from database
    {
        $grid = new Grid(new SubDom());

        $grid->column('id', __('Id'));
        $grid->column('date', __('Date'));
        $grid->column('subdomain', __('Subdomain'));
        $grid->column('status', __('Status'));
        $grid->column('created_at', __('Crated at'));
        $grid->column('updated_at', __('Updated at'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)  //creating data 
    {
        $show = new Show(SubDom::findOrFail($id));

        $show->column('id', __('Id'));
        $show->column('date', __('Date'));
        $show->column('subdomain', __('Subdomain'));
        $show->column('status', __('Status'));
        $show->column('created_at', __('Crated at'));
        $show->column('updated_at', __('Updated at'));


        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form() //additing data
    {
        $form = new Form(new SubDom());

        $form->date('date', __('Date'))->default(date('Y-m-d'));
        $form->text('username', __('Username'));
        $form->text('subdomain', __('Subdomain'));
        $form->text('status', __('Status'))->default(pending);


        return $form;
    }
}
