<?php

namespace App\Admin\Controllers;

use App\Models\SubDomain;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SubDomainController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'SubDomain';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()   //shows records from the database 
    {
        $grid = new Grid(new SubDomain());

        $grid->column('id', __('Id'));
        $grid->column('date', __('Date'));
        $grid->column('username', __('Username'));
        $grid->column('subdomain', __('Subdomain'));
        $grid->column('status', __('Status'));
dd($grid);
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
        $show = new Show(SubDomain::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('date', __('Date'));
        $show->field('username', __('Username'));
        $show->field('subdomain', __('Subdomain'));
        $show->field('status', __('Status'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new SubDomain());

        $form->date('date', __('Date'))->default(date('Y-m-d'));
        $form->text('username', __('Username'));
        $form->textarea('subdomain', __('Subdomain'));
        $form->textarea('status', __('Status'))->default(pending);

        return $form;
    }
}
