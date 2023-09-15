<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Stichoza\GoogleTranslate\GoogleTranslate;

class LanguageController extends Controller
{
    public function library($new_lang)
    {

        if($new_lang == 'en')
        {
            $new_lang = 'en';
        }
    
        return $lang = [
            'Start_now' => GoogleTranslate::trans('Start now', $new_lang),
            'Sign' => GoogleTranslate::trans('Sign in', $new_lang),
            'countryoptions' => GoogleTranslate::trans('English', $new_lang),
            'Book' => GoogleTranslate::trans('Book a meeting', $new_lang),
            'About_facility' => GoogleTranslate::trans('About the facility', $new_lang),
            'Content' => GoogleTranslate::trans('Content', $new_lang),
            'about_system' => GoogleTranslate::trans('about the system', $new_lang),
            'human_resource_management_system'=> GoogleTranslate::trans('human resource management system', $new_lang),
            'Intelligent'=> GoogleTranslate::trans('Intelligent technology to automate human resource management', $new_lang),
            'Control'=> GoogleTranslate::trans('Control all HR tasks from the moment of hiring to retirement.', $new_lang),
            'Request'=> GoogleTranslate::trans('Request a price now', $new_lang),
            'You_do_not'=> GoogleTranslate::trans('You do not need to enter credit card information', $new_lang),
            'Excellent'=> GoogleTranslate::trans('Excellent after-sales support services', $new_lang),
            'A_fully_native'=> GoogleTranslate::trans('A fully native human resource system', $new_lang),
            'Increase'=> GoogleTranslate::trans('Increase in data security and compliance with local laws', $new_lang),
            'Increase_in_time'=> GoogleTranslate::trans('Increase in time saving', $new_lang),
            'Increase_in_employee'=> GoogleTranslate::trans('Increase in employee engagement', $new_lang),
            'Reasons_to_invest'=> GoogleTranslate::trans('Reasons to invest in a cloud HR management system like ZenHR', $new_lang),
            'Automate_HR'=> GoogleTranslate::trans('Automate HR', $new_lang),
            'Let_our_customers'=> GoogleTranslate::trans('Let our customers talk about our services', $new_lang),
            'Invest_in_your'=> GoogleTranslate::trans('Invest in your peace of mind with ZenHR', $new_lang),
            'The_support1'=> GoogleTranslate::trans('The support provided by the ZenHR team is exceptional.', $new_lang),
            'Experts_Plus1'=> GoogleTranslate::trans('Experts Plus Employment Services', $new_lang),
            'The_support2'=> GoogleTranslate::trans('The support provided by the ZenHR team is exceptional.', $new_lang),
            'Experts_Plus2'=> GoogleTranslate::trans('Experts Plus Employment Services', $new_lang),
            'The_support3'=> GoogleTranslate::trans('The support provided by the ZenHR team is exceptional.', $new_lang),
            'Experts_Plus3'=> GoogleTranslate::trans('Experts Plus Employment Services', $new_lang),
            'The_support4'=> GoogleTranslate::trans('The support provided by the ZenHR team is exceptional.', $new_lang),
            'Experts_Plus4'=> GoogleTranslate::trans('Experts Plus Employment Services', $new_lang),
            'The_support5'=> GoogleTranslate::trans('The support provided by the ZenHR team is exceptional.', $new_lang),
            'Experts_Plus5'=> GoogleTranslate::trans('Experts Plus Employment Services', $new_lang),
            'The_support6'=> GoogleTranslate::trans('The support provided by the ZenHR team is exceptional.', $new_lang),
            'Experts_Plus6'=> GoogleTranslate::trans('Experts Plus Employment Services', $new_lang),
            'The_support7'=> GoogleTranslate::trans('The support provided by the ZenHR team is exceptional.', $new_lang),
            'Experts_Plus7'=> GoogleTranslate::trans('Experts Plus Employment Services', $new_lang),
           
            'Find_out_more'=> GoogleTranslate::trans('Find out more', $new_lang),
            'ZenHR_Solutions'=> GoogleTranslate::trans('ZenHR . Solutions Track attendance and time', $new_lang),
            'Track'=> GoogleTranslate::trans('Track attendance and time', $new_lang),
            'ZenHR_time'=> GoogleTranslate::trans('ZenHR time and attendance tracking solutions add the
            ability to automate many of your daily repetitive tasks by connecting with your time tracking devices.', $new_lang),
            'ZenHR_Features'=> GoogleTranslate::trans('ZenHR . Features', $new_lang),
            'Create_a_happier'=> GoogleTranslate::trans('Create a happier, more productive and engaging workplace with ZenHR unique features', $new_lang),
            'Health_insurance'=> GoogleTranslate::trans('Health insurance for employees', $new_lang),
            'Instant_access_to'=> GoogleTranslate::trans('Instant access to health insurance information about employees and their families, and the calculation of contributions.', $new_lang),
            'Lern_more'=> GoogleTranslate::trans('Lern more', $new_lang),
            'Start'=> GoogleTranslate::trans('Start now', $new_lang),

            'Mobile_Application'=> GoogleTranslate::trans('Mobile Application for Employee Self Service (ESS)', $new_lang),
            'With_the_mobile_application'=> GoogleTranslate::trans('With the mobile application for self-service, employees and HR professionals 
            can stay connected with their company wherever they go. With self-service solutions,
             employees can access and approve pay slips, leave requests, leave requests, and 
             automatically track shifts, work schedules, and shifts from anywhere with absolute ease.', $new_lang),

            'Give_your_employees'=> GoogleTranslate::trans('Give your employees access to the payroll', $new_lang),
            'Automate_time_and_attendance'=> GoogleTranslate::trans('Automate time and attendance tracking by geographic location', $new_lang),
            'Managing_leave'=> GoogleTranslate::trans('Managing leave requests and departures', $new_lang),
            'Staff_scheduling'=> GoogleTranslate::trans('Staff scheduling and shift management', $new_lang),
            'More_features'=> GoogleTranslate::trans('More features', $new_lang),
            'localization'=> GoogleTranslate::trans('localization', $new_lang),
            'ZenHRs_Human_Resource'=> GoogleTranslate::trans('ZenHR Human Resource Management System is fully localized to
             reflect all local laws and labor regulations in the MENA region including GOSI, 
             WPS, and Social Security. This gives you the flexibility you need to automate 
             payroll rolls while ensuring compliance with local human resources laws', $new_lang),
             'ZenHRs_Human_Resource1'=> GoogleTranslate::trans('ZenHR Human Resource Management System is fully localized to
             reflect all local laws and labor regulations in the MENA region including GOSI, 
             WPS, and Social Security. This gives you the flexibility you need to automate 
             payroll rolls while ensuring compliance with local human resources laws', $new_lang),


            'Request_a_demo'=> GoogleTranslate::trans('Request a demo', $new_lang),
            'Request_a_demo1'=> GoogleTranslate::trans('Request a demo', $new_lang),
            'Our_users'=> GoogleTranslate::trans('Our users love our system', $new_lang),
            'See_our_review'=> GoogleTranslate::trans('See our review at:', $new_lang),
       
            '_4'=> GoogleTranslate::trans('4.7/5', $new_lang),
            'Choose_the_Highest'=> GoogleTranslate::trans('Choose the Highest Rated HR System', $new_lang),
            'ZenHR_is_an_award_winning'=> GoogleTranslate::trans('ZenHR is an award-winning HR software that has been recognized by many global
             service provider assessment platforms. These ratings are based on a range of quantitative 
             and qualitative factors, including ratings by end users, integration with other applications,
              mobile application features, and other features.', $new_lang),

            'Enjoy_the_best'=> GoogleTranslate::trans('Enjoy the best user experience so you can focus on what important - your employees', $new_lang),
            'Do_you_want'=> GoogleTranslate::trans('Do you want to facilitate the day-to-day HR operations of the employees in your facility?', $new_lang),
            'book_an_appointment'=> GoogleTranslate::trans('book an appointment', $new_lang),
            'Request_a_demo'=> GoogleTranslate::trans('Request a demo', $new_lang),
            'Connect_with_us'=> GoogleTranslate::trans('Connect with us', $new_lang),
            'Kingdom_Saudi_Arabia'=> GoogleTranslate::trans('Kingdom Saudi Arabia', $new_lang),
            '_num'=> GoogleTranslate::trans('+966 54 129 8521', $new_lang),
            '_Jordan'=> GoogleTranslate::trans('+962 6 577 7500 Jordan', $new_lang),
            'The_United_Arab_Emirates'=> GoogleTranslate::trans('The United Arab Emirates', $new_lang),
            'num71588167685'=> GoogleTranslate::trans('+971 58 816 7685', $new_lang),
            'sales'=> GoogleTranslate::trans('sales@zenhr.com', $new_lang),
            'content'=> GoogleTranslate::trans('content', $new_lang),
            'Blog'=> GoogleTranslate::trans('Blog', $new_lang),
            'white_papers'=> GoogleTranslate::trans('white papers', $new_lang),
            'common_questions'=> GoogleTranslate::trans('common questions', $new_lang),
            'common_question'=> GoogleTranslate::trans('common questions', $new_lang),
            'glossary_of_human'=> GoogleTranslate::trans('glossary of human', $new_lang),
            'resources_terms'=> GoogleTranslate::trans('resources terms', $new_lang),
            'Customer_Studies'=> GoogleTranslate::trans('Customer Studies', $new_lang),
            'salary_calculator'=> GoogleTranslate::trans('salary calculator', $new_lang),
            'Calculate_the_tax_on_your_salary'=> GoogleTranslate::trans('Calculate the tax onyour salary', $new_lang),
            'HR_letter_templates'=> GoogleTranslate::trans('HR letter templates', $new_lang),
            'Application_Programming_Interface'=> GoogleTranslate::trans('Application Programming Interface (API)', $new_lang),
            'Resources_related_to_the_COVID'=> GoogleTranslate::trans('Resources related to the COVID-19 pandemic', $new_lang),
            'our_solutions'=> GoogleTranslate::trans('our solutions', $new_lang),
            'salary_path'=> GoogleTranslate::trans('salary path', $new_lang),
            'Time_and_time_tracking'=> GoogleTranslate::trans('Time and time tracking', $new_lang),
         
            'Employee_self_service'=> GoogleTranslate::trans('Employee self-service', $new_lang),
            'Welcoming_new_employees'=> GoogleTranslate::trans('Welcoming new employees and termination of services', $new_lang),
            'Applicant_Tracking_System'=> GoogleTranslate::trans('Applicant Tracking System (ZenATS)', $new_lang),
            'All_our_solutions'=> GoogleTranslate::trans('All our solutions', $new_lang),
            'About_the_facility'=> GoogleTranslate::trans('About the facility', $new_lang),
            'About_ZenHR'=> GoogleTranslate::trans('About ZenHR', $new_lang),
            'Customer_testimonials'=> GoogleTranslate::trans('Applicant Tracking System (ZenATS)', $new_lang),
            'Become_a_partner'=> GoogleTranslate::trans('Become a partner', $new_lang),
            'Join_our_team'=> GoogleTranslate::trans('Join our team', $new_lang),


        ];
    }
}
