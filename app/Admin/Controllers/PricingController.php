<?php

namespace App\Admin\Controllers;

use App\Models\Pricing;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PricingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Pricing';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Pricing());

        // $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('daily_cost',__('Daily Cost'));
        $grid->column('user_limit',__('User Limit'));
        // $grid->column('monthly_cost', __('Monthly cost'));
        // $grid->column('yearly_cost', __('Yearly cost'));
        // $grid->column('created_at', __('Created at'));
        // $grid->column('updated_at', __('Updated at'));
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
        $show = new Show(Pricing::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('daily_cost', __('Daily cost'));
        $show->field('user_limit', __('User Limit'));
        // $show->field('created_at', __('Created at'));
        // $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Pricing());

        $form->text('name', __('Name'));
        $form->decimal('daily_cost', __('Daily cost'));
        $form->decimal('user_limit', __('User Limit'));

        return $form;
    }
}
