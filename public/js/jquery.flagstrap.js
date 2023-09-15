/*
 *  FlagStrap - v1.0
 *  A lightwieght jQuery plugin for creating Bootstrap 3 compatible country select boxes with flags.
 *  http://www.blazeworx.com/flagstrap
 *
 *  Made by Alex Carter
 *  Under MIT License
 */
(function ($) {

    var defaults = {
        buttonSize: "btn-md",
        buttonType: "btn-default",
        labelMargin: "10px",
        scrollable: true,
        scrollableHeight: "250px",
        placeholder: {
            value: '',
            text: 'Choose a language'
        }
    };

    var countries = {
        "AF": "Afghanistan",
        "AL": "Albania",
        "DZ": "Algeria",
        "AS": "American Samoa",
        "AD": "Andorra",
        "AO": "Angola",
        "AI": "Anguilla",
        "AG": "Antigua and Barbuda",
        "ARA":"Arabic",
        "AR": "Argentina",
        "AM": "Armenia",
        "AW": "Aruba",
        "AU": "Australia",
        "AT": "Austria",
        "AZ": "Azerbaijan",
        "BS": "Bahamas",
        "BH": "Bahrain",
        "BD": "Bangladesh",
        "BB": "Barbados",
        "BY": "Belarus",
        "BE": "Belgium",
        "BZ": "Belize",
        "BJ": "Benin",
        "BM": "Bermuda",
        "BT": "Bhutan",
        "BO": "Bolivia, Plurinational State of",
        "BA": "Bosnia and Herzegovina",
        "BW": "Botswana",
        "BV": "Bouvet Island",
        "BR": "Brazil",
        "IO": "British Indian Ocean Territory",
        "BN": "Brunei Darussalam",
        "BG": "Bulgaria",
        "BF": "Burkina Faso",
        "BI": "Burundi",
        "KH": "Cambodia",
        "CM": "Cameroon",
        "CA": "Canada",
        "CV": "Cape Verde",
        "KY": "Cayman Islands",
        "CF": "Central African Republic",
        "TD": "Chad",
        "CL": "Chile",
        "CN": "China",
        "CO": "Colombia",
        "KM": "Comoros",
        "CG": "Congo",
        "CD": "Congo, the Democratic Republic of the",
        "CK": "Cook Islands",
        "CR": "Costa Rica",
        "CI": "C" + "&ocirc;" + "te d'Ivoire",
        "HR": "Croatia",
        "CU": "Cuba",
        "CW": "Cura" + "&ccedil;" + "ao",
        "CY": "Cyprus",
        "CZ": "Czech Republic",
        "DK": "Denmark",
        "DJ": "Djibouti",
        "DM": "Dominica",
        "DO": "Dominican Republic",
        "EC": "Ecuador",
        "EG": "Egypt",
        "SV": "El Salvador",
        "GQ": "Equatorial Guinea",
        "ER": "Eritrea",
        "EE": "Estonia",
        "ET": "Ethiopia",
        "FK": "Falkland Islands (Malvinas)",
        "FO": "Faroe Islands",
        "FJ": "Fiji",
        "FI": "Finland",
        "FR": "France",
        "GF": "French Guiana",
        "PF": "French Polynesia",
        "TF": "French Southern Territories",
        "GA": "Gabon",
        "GM": "Gambia",
        "GE": "Georgia",
        "DE": "GER",
        "GH": "Ghana",
        "GI": "Gibraltar",
        "GR": "Greece",
        "GL": "Greenland",
        "GD": "Grenada",
        "GP": "Guadeloupe",
        "GU": "Guam",
        "GT": "Guatemala",
        "GG": "Guernsey",
        "GN": "Guinea",
        "GW": "Guinea-Bissau",
        "GY": "Guyana",
        "HT": "Haiti",
        "HM": "Heard Island and McDonald Islands",
        "VA": "Holy See (Vatican City State)",
        "HN": "Honduras",
        "HK": "Hong Kong",
        "HU": "Hungary",
        "IS": "Iceland",
        "IN": "India",
        "ID": "Indonesia",
        "IR": "Iran, Islamic Republic of",
        "IQ": "Iraq",
        "IE": "Ireland",
        "IM": "Isle of Man",
        "IL": "Israel",
        "IT": "Italy",
        "JM": "Jamaica",
        "JP": "Japan",
        "JE": "Jersey",
        "JO": "Jordan",
        "KZ": "Kazakhstan",
        "KE": "Kenya",
        "KI": "Kiribati",
        "KP": "Korea, Democratic People's Republic of",
        "KR": "Korea, Republic of",
        "KW": "Kuwait",
        "KG": "Kyrgyzstan",
        "LA": "Lao People's Democratic Republic",
        "LV": "Latvia",
        "LB": "Lebanon",
        "LS": "Lesotho",
        "LR": "Liberia",
        "LY": "Libya",
        "LI": "Liechtenstein",
        "LT": "Lithuania",
        "LU": "Luxembourg",
        "MO": "Macao",
        "MK": "Macedonia, the former Yugoslav Republic of",
        "MG": "Madagascar",
        "MW": "Malawi",
        "MY": "Malaysia",
        "MV": "Maldives",
        "ML": "Mali",
        "MT": "Malta",
        "MH": "Marshall Islands",
        "MQ": "Martinique",
        "MR": "Mauritania",
        "MU": "Mauritius",
        "YT": "Mayotte",
        "MX": "Mexico",
        "FM": "Micronesia, Federated States of",
        "MD": "Moldova, Republic of",
        "MC": "Monaco",
        "MN": "Mongolia",
        "ME": "Montenegro",
        "MS": "Montserrat",
        "MA": "Morocco",
        "MZ": "Mozambique",
        "MM": "Myanmar",
        "NA": "Namibia",
        "NR": "Nauru",
        "NP": "Nepal",
        "NL": "Netherlands",
        "NC": "New Caledonia",
        "NZ": "New Zealand",
        "NI": "Nicaragua",
        "NE": "Niger",
        "NG": "Nigeria",
        "NU": "Niue",
        "NF": "Norfolk Island",
        "MP": "Northern Mariana Islands",
        "NO": "Norway",
        "OM": "Oman",
        "PK": "Pakistan",
        "PW": "Palau",
        "PS": "Palestinian Territory, Occupied",
        "PA": "Panama",
        "PG": "Papua New Guinea",
        "PY": "Paraguay",
        "PE": "Peru",
        "PH": "Philippines",
        "PN": "Pitcairn",
        "PL": "Poland",
        "PT": "Portugal",
        "PR": "Puerto Rico",
        "QA": "Qatar",
        "RE": "R" + "&eacute;" + "union",
        "RO": "Romania",
        "RU": "Russian Federation",
        "RW": "Rwanda",
        "SH": "Saint Helena, Ascension and Tristan da Cunha",
        "KN": "Saint Kitts and Nevis",
        "LC": "Saint Lucia",
        "MF": "Saint Martin (French part)",
        "PM": "Saint Pierre and Miquelon",
        "VC": "Saint Vincent and the Grenadines",
        "WS": "Samoa",
        "SM": "San Marino",
        "ST": "Sao Tome and Principe",
        "SA": "Saudi Arabia",
        "SN": "Senegal",
        "RS": "Serbia",
        "SC": "Seychelles",
        "SL": "Sierra Leone",
        "SG": "Singapore",
        "SX": "Sint Maarten (Dutch part)",
        "SK": "Slovakia",
        "SI": "Slovenia",
        "SB": "Solomon Islands",
        "SO": "Somalia",
        "ZA": "South Africa",
        "GS": "South Georgia and the South Sandwich Islands",
        "SS": "South Sudan",
        "ES": "Spain",
        "LK": "Sri Lanka",
        "SD": "Sudan",
        "SR": "Suriname",
        "SZ": "Swaziland",
        "SE": "Sweden",
        "CH": "Switzerland",
        "SY": "Syrian Arab Republic",
        "TW": "Taiwan, Province of China",
        "TJ": "Tajikistan",
        "TZ": "Tanzania, United Republic of",
        "TH": "Thailand",
        "TL": "Timor-Leste",
        "TG": "Togo",
        "TK": "Tokelau",
        "TO": "Tonga",
        "TT": "Trinidad and Tobago",
        "TN": "Tunisia",
        "TR": "Turkey",
        "TM": "Turkmenistan",
        "TC": "Turks and Caicos Islands",
        "TV": "Tuvalu",
        "UG": "Uganda",
        "UA": "UKR",
        "AE": "United Arab Emirates",
        "GB": "ENG",
        "US": "United States",
        "UM": "United States Minor Outlying Islands",
        "UY": "Uruguay",
        "UZ": "Uzbekistan",
        "VU": "Vanuatu",
        "VE": "Venezuela, Bolivarian Republic of",
        "VN": "Viet Nam",
        "VG": "Virgin Islands, British",
        "VI": "Virgin Islands, U.S.",
        "WF": "Wallis and Futuna",
        "EH": "Western Sahara",
        "YE": "Yemen",
        "ZM": "Zambia",
        "ZW": "Zimbabwe"
    };

    $.flagStrap = function (element, options, i) {

        var plugin = this;

        var uniqueId = generateId(8);

        plugin.countries = {};
        plugin.selected = {value: null, text: null};
        plugin.settings = {inputName: 'country-' + uniqueId};

        var $container = $(element);
        var htmlSelectId = 'flagstrap-' + uniqueId;
        var htmlSelect = '#' + htmlSelectId;

        plugin.init = function () {

            // Merge in global settings then merge in individual settings via data attributes
            plugin.countries = countries;

            // Initialize Settings, priority: defaults, init options, data attributes
            plugin.countries = countries;
            plugin.settings = $.extend({}, defaults, options, $container.data());

            if (undefined !== plugin.settings.countries) {
                plugin.countries = plugin.settings.countries;
            }

            if (undefined !== plugin.settings.inputId) {
                htmlSelectId = plugin.settings.inputId;
                htmlSelect = '#' + htmlSelectId;
            }

            // Build HTML Select, Construct the drop down button, Assemble the drop down list items element and insert
            $container
                .addClass('flagstrap')
                .append(buildHtmlSelect)
                .append(buildDropDownButton)
                .append(buildDropDownButtonItemList);

            // Check to see if the onSelect callback method is assigned / callable, bind the change event for broadcast
            if (plugin.settings.onSelect !== undefined && plugin.settings.onSelect instanceof Function) {
                $(htmlSelect).change(function (event) {
                    var element = this;
                    options.onSelect($(element).val(), element);
                });
            }

            // Hide the actual HTML select
            $(htmlSelect).hide();

        };

        var buildHtmlSelect = function () {
            var htmlSelectElement = $('<select/>').attr('id', htmlSelectId).attr('name', plugin.settings.inputName);

            $.each(plugin.countries, function (code, country) {
                var optionAttributes = {value: code};
                if (plugin.settings.selectedCountry !== undefined) {
                    if (plugin.settings.selectedCountry === code) {
                        optionAttributes = {value: code, selected: "selected"};
                        plugin.selected = {value: code, text: country}
                    }
                }
                htmlSelectElement.append($('<option>', optionAttributes).text(country));
            });

            if (plugin.settings.placeholder !== false) {
                htmlSelectElement.prepend($('<option>', {
                    value: plugin.settings.placeholder.value,
                    text: plugin.settings.placeholder.text
                }));
            }

            return htmlSelectElement;
        };

        var buildDropDownButton = function () {

            var selectedText = $(htmlSelect).find('option').first().text();
            var selectedValue = $(htmlSelect).find('option').first().val();

            selectedText = plugin.selected.text || selectedText;
            selectedValue = plugin.selected.value || selectedValue;

            if (selectedValue !== plugin.settings.placeholder.value) {
                var $selectedLabel = $('<i/>').addClass('flagstrap-icon flagstrap-' + selectedValue.toLowerCase()).css('margin-right', plugin.settings.labelMargin);
            } else {
                var $selectedLabel = $('<i/>').addClass('flagstrap-icon flagstrap-placeholder');
            }

            var buttonLabel = $('<span/>')
                .addClass('flagstrap-selected-' + uniqueId)
                .attr('id','countryBtn')
                .html($selectedLabel)
                .append(selectedText);

            var button = $('<button/>')
                .attr('type', 'button')
                .attr('data-toggle', 'dropdown')
                .attr('id', 'flagstrap-drop-down-' + uniqueId)
                .addClass('btn ' + plugin.settings.buttonType + ' ' + plugin.settings.buttonSize + ' dropdown-toggle')
                .html(buttonLabel);

            $('<span/>')
                .addClass('caret')
                .css('margin-left', plugin.settings.labelMargin)
                .insertAfter(buttonLabel);

            return button;

        };

        var buildDropDownButtonItemList = function () {
            var items = $('<ul/>')
                .attr('id', 'flagstrap-drop-down-' + uniqueId + '-list')
                .attr('style','width: 11rem; padding: 10px;')
                .attr('aria-labelled-by', 'flagstrap-drop-down-' + uniqueId)
                .addClass('dropdown-menu');

            if (plugin.settings.scrollable) {
                items.css('height', 'auto')
                    .css('max-height', plugin.settings.scrollableHeight)
                    .css('overflow-x', 'hidden');
            }

            // Populate the bootstrap dropdown item list
            $(htmlSelect).find('option').each(function () {

                // Get original select option values and labels
                var text = $(this).text();
                var value = $(this).val();

                // Build the flag icon
                if (value !== plugin.settings.placeholder.value) {
                    var flagIcon = $('<i/>').addClass('flagstrap-icon flagstrap-' + value.toLowerCase()).css('margin-right', plugin.settings.labelMargin);
                } else {
                    var flagIcon = null;
                }


                // Build a clickable drop down option item, insert the flag and label, attach click event
                var flagStrapItem = $('<a/>')
                    .attr('data-val', $(this).val())
                    .html(flagIcon)
                    .append(text)
                    .on('click', function (e) {
                        $(htmlSelect).val($(this).data('val'));
                        $(htmlSelect).trigger('change');
                        $('.flagstrap-selected-' + uniqueId).html($(this).html());
                        e.preventDefault();
                    });

                // Make it a list item
                var listItem = $('<li/>').prepend(flagStrapItem);

                // Append it to the drop down item list
                items.append(listItem);

            });

            return items;
        };

        function generateId(length) {
            var chars = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXTZabcdefghiklmnopqrstuvwxyz'.split('');

            if (!length) {
                length = Math.floor(Math.random() * chars.length);
            }

            var str = '';
            for (var i = 0; i < length; i++) {
                str += chars[Math.floor(Math.random() * chars.length)];
            }
            return str;
        }

        plugin.init();

    };

    $.fn.flagStrap = function (options) {

        return this.each(function (i) {
            if ($(this).data('flagStrap') === undefined) {
                $(this).data('flagStrap', new $.flagStrap(this, options, i));
            }
        });

    }

})(jQuery);

window.onload = function() {
        // if(!localStorage.getItem('default_lang'))
        // {
        //     localStorage.setItem('default_lang', 'ar');
        // }

    let new_lang = 'ar';  //localStorage.getItem('default_lang');
   
    $.ajax({
        type: 'GET',
        url: '/changelang/' + new_lang,
        success: function (response) {
            $("#Start_now").html(response.Start_now)
            $("#Sign").html(response.Sign)
            $("#countryoptions").html(response.countryoptions)
            $("#Book").html(response.Book)
            $("#About_facility").html(response.About_facility)
            $("#Content").html(response.Content)
            $("#about_system").html(response.about_system)
            $("#human_resource_management_system").html(response.human_resource_management_system)
            $("#Intelligent").html(response.Intelligent)
            $("#Control").html(response.Control)
            $("#Request").html(response.Request)
            $("#You_do_not").html(response.You_do_not)
            $("#Excellent").html(response.Excellent)
            $("#A_fully_native").html(response.A_fully_native)
            $("#Increase").html(response.Increase)
            $("#Increase_in_time").html(response.Increase_in_time)
            $("#Increase_in_employee").html(response.Increase_in_employee)
            $("#Reasons_to_invest").html(response.Reasons_to_invest)
            $("#Automate_HR").html(response.Automate_HR)
            $("#Let_our_customers").html(response.Let_our_customers)
            $("#Invest_in_your").html(response.Invest_in_your)
            $("#The_support1").html(response.The_support1)
            $("#Experts_Plus1").html(response.Experts_Plus1)
            $("#The_support2").html(response.The_support2)
            $("#Experts_Plus2").html(response.Experts_Plus2)
            $("#The_support3").html(response.The_support3)
            $("#Experts_Plus3").html(response.Experts_Plus3)
            $("#The_support4").html(response.The_support4)
            $("#Experts_Plus4").html(response.Experts_Plus4)
            $("#The_support5").html(response.The_support5)
            $("#Experts_Plus5").html(response.Experts_Plus5)
            $("#The_support6").html(response.The_support6)
            $("#Experts_Plus6").html(response.Experts_Plus6)
            $("#The_support7").html(response.The_support7)
            $("#Experts_Plus7").html(response.Experts_Plus7)
            $("#Find_out_more").html(response.Find_out_more)
            $("#ZenHR_Solutions").html(response.ZenHR_Solutions)
            $("#ZenHR_time").html(response.ZenHR_time)
            $("#ZenHR_Features").html(response.ZenHR_Features)
            $("#Create_a_happier").html(response.Create_a_happier)
            $("#Health_insurance").html(response.Health_insurance)
            $("#Instant_access_to").html(response.Instant_access_to)
            $("#Lern_more").html(response.Lern_more)
            $("#Mobile_Application").html(response.Mobile_Application)
            $("#With_the_mobile_application").html(response.With_the_mobile_application)
            $("#Give_your_employees").html(response.Give_your_employees)
             $("#Automate_time_and_attendance").html(response.Automate_time_and_attendance)
            $("#Managing_leave").html(response.Managing_leave)
            $("#Staff_scheduling").html(response.Staff_scheduling)
            $("#More_features").html(response.More_features)
            $("#localization").html(response.localization)
            $("#ZenHRs_Human_Resource").html(response.ZenHRs_Human_Resource)
            $("#ZenHRs_Human_Resource1").html(response.ZenHRs_Human_Resource)
           
            $("#Our_users").html(response.Our_users)
            $("#See_our_review").html(response.See_our_review)
            $("#_4").html(response._4)
            $("#Choose_the_Highest").html(response.Choose_the_Highest)
            $("#ZenHR_is_an_award_winning").html(response.ZenHR_is_an_award_winning)
            $("#Enjoy_the_best").html(response.Enjoy_the_best)
            $("#Do_you_want").html(response.Do_you_want)
            $("#book_an_appointment").html(response.book_an_appointment)
            $("#Request_a_demo").html(response.Request_a_demo)
            $("#Request_a_demo1").html(response.Request_a_demo1)
            $("#Connect_with_us").html(response.Connect_with_us)
            $("#Kingdom_Saudi_Arabia").html(response.Kingdom_Saudi_Arabia)
            $("#_num").html(response._num)
            $("#_Jordan").html(response._Jordan)
            $("#The_United_Arab_Emirates").html(response.The_United_Arab_Emirates)
            $("#num71588167685").html(response.num71588167685)
            $("#sales").html(response.sales)
            $("#content").html(response.content)
            $("#Blog").html(response.Blog)
            $("#white_papers").html(response.white_papers)
        
            $("#glossary_of_human").html(response.glossary_of_human)
            $("#resources_terms").html(response.resources_terms)
            $("#Customer_Studies").html(response.Customer_Studies)
            $("#salary_calculator").html(response.salary_calculator)
            $("#Calculate_the_tax_on_your_salary").html(response.Calculate_the_tax_on_your_salary)
            $("#HR_letter_templates").html(response.HR_letter_templates)
            $("#Application_Programming_Interface").html(response.Application_Programming_Interface)
            $("#Resources_related_to_the_COVID").html(response.Resources_related_to_the_COVID)
            $("#our_solutions").html(response.our_solutions)
            $("#salary_path").html(response.salary_path)
            $("#Time_and_time_tracking").html(response.Time_and_time_tracking)
            $("#common_questions").html(response.common_questions)
            $("#common_question").html(response.common_question)
            $("#Employee_self_service").html(response.Employee_self_service)
            $("#Welcoming_new_employees").html(response.Welcoming_new_employees)
            $("#Applicant_Tracking_System").html(response.Applicant_Tracking_System)
            $("#All_our_solutions").html(response.All_our_solutions)
            $("#About_the_facility").html(response.About_the_facility)
            $("#About_ZenHR").html(response.About_ZenHR)
            $("#Customer_testimonials").html(response.Customer_testimonials)
            $("#Become_a_partner").html(response.Become_a_partner)
            $("#Join_our_team").html(response.Join_our_team)
          
            $("#Start").html(response.Start)
           

        }
    });
  };

// $('#countryoptions').flagStrap({
//     countries: {
//         "UA": "UKR",
//         "GB": "ENG",
//         "DE": "GER"
//     }, 
//     buttonSize: "btn-sm",
//     buttonType: "btn-info",
//     labelMargin: "10px",
//     scrollable: false,
//     scrollableHeight: "350px"
// });


$('#countryoptions').on('click', function () { 
    var new_lang = 'en';
   
    // console.log($('#countryBtn').html().slice($('#countryBtn').html().length-3));
    // let new_lang = $('#countryBtn').html().slice($('#countryBtn').html().length-3);
    // localStorage.setItem('default_lang', 'ar');
    $.ajax({
        type: 'GET',
        url: '/changelang/' + new_lang,
        success: function (response) {
            $("#Start_now").html(response.Start_now)
            $("#human_resource_management_system").html(response.human_resource_management_system)
            $("#Sign").html(response.Sign)
            $("#countryoptions").html(response.countryoptions)
            $("#Book").html(response.Book)
            $("#About_facility").html(response.About_facility)
            $("#Content").html(response.Content)
            $("#about_system").html(response.about_system)
            $("#Intelligent").html(response.Intelligent)
            $("#Control").html(response.Control)
            $("#Request").html(response.Request)
            $("#start").html(response.start)
            $("#You_do_not").html(response.You_do_not)
            $("#Excellent").html(response.Excellent)
            $("#A_fully_native").html(response.A_fully_native)
            $("#Increase").html(response.Increase)
            $("#Increase_in_time").html(response.Increase_in_time)
            $("#Increase_in_employee").html(response.Increase_in_employee)
            $("#Reasons_to_invest").html(response.Reasons_to_invest)
            $("#Automate_HR").html(response.Automate_HR)
            $("#Let_our_customers").html(response.Let_our_customers)
            $("#Invest_in_your").html(response.Invest_in_your)
            $("#The_support1").html(response.The_support1)
            $("#Experts_Plus1").html(response.Experts_Plus1)
            $("#The_support2").html(response.The_support2)
            $("#Experts_Plus2").html(response.Experts_Plus2)
            $("#The_support3").html(response.The_support3)
            $("#Experts_Plus3").html(response.Experts_Plus3)
            $("#The_support4").html(response.The_support4)
            $("#Experts_Plus4").html(response.Experts_Plus4)
            $("#The_support5").html(response.The_support5)
            $("#Experts_Plus5").html(response.Experts_Plus5)
            $("#The_support6").html(response.The_support6)
            $("#Experts_Plus6").html(response.Experts_Plus6)
            $("#The_support7").html(response.The_support7)
            $("#Experts_Plus7").html(response.Experts_Plus7)
            $("#Find_out_more").html(response.Find_out_more)
            $("#ZenHR_Solutions").html(response.ZenHR_Solutions)
            $("#ZenHR_time").html(response.ZenHR_time)
            $("#ZenHR_Features").html(response.ZenHR_Features)
            $("#Create_a_happier").html(response.Create_a_happier)
            const newLocal = "#Health_insurance";
            $(newLocal).html(response.Health_insurance)
            $("#Instant_access_to").html(response.Instant_access_to)
            $("#Lern_more").html(response.Lern_more)
            $("#Mobile_Application").html(response.Mobile_Application)
            $("#With_the_mobile_application").html(response.With_the_mobile_application)
            $("#Give_your_employees").html(response.Give_your_employees)
             $("#Automate_time_and_attendance").html(response.Automate_time_and_attendance)
            $("#Managing_leave").html(response.Managing_leave)
            $("#Staff_scheduling").html(response.Staff_scheduling)
            $("#More_features").html(response.More_features)
            $("#localization").html(response.localization)
            $("#ZenHRs_Human_Resource").html(response.ZenHRs_Human_Resource)
            $("#ZenHRs_Human_Resource1").html(response.ZenHRs_Human_Resource)
            $("#Our_users").html(response.Our_users)
            $("#Start").html(response.Start)
            
            $("#See_our_review").html(response.See_our_review)
            $("#_4").html(response._4)
            $("#Choose_the_Highest").html(response.Choose_the_Highest)
            $("#ZenHR_is_an_award_winning").html(response.ZenHR_is_an_award_winning)
            $("#Enjoy_the_best").html(response.Enjoy_the_best)
            $("#Do_you_want").html(response.Do_you_want)
            $("#book_an_appointment").html(response.book_an_appointment)
            $("#Request_a_demo").html(response.Request_a_demo)
            $("#Connect_with_us").html(response.Connect_with_us)
            $("#Kingdom_Saudi_Arabia").html(response.Kingdom_Saudi_Arabia)
            $("#_num").html(response._num)
            $("#_Jordan").html(response._Jordan)
            $("#The_United_Arab_Emirates").html(response.The_United_Arab_Emirates)
            $("#num71588167685").html(response.num71588167685)
            $("#sales").html(response.sales)
            $("#content").html(response.content)
            $("#Blog").html(response.Blog)
            $("#white_papers").html(response.white_papers)
            $("#common_questions").html(response.common_questions)
            $("#glossary_of_human").html(response.glossary_of_human)
            $("#resources_terms").html(response.resources_terms)
            $("#Customer_Studies").html(response.Customer_Studies)
            $("#salary_calculator").html(response.salary_calculator)
            $("#Calculate_the_tax_on_your_salary").html(response.Calculate_the_tax_on_your_salary)
            $("#HR_letter_templates").html(response.HR_letter_templates)
            $("#Application_Programming_Interface").html(response.Application_Programming_Interface)
            $("#Resources_related_to_the_COVID").html(response.Resources_related_to_the_COVID)
            $("#our_solutions").html(response.our_solutions)
            $("#salary_path").html(response.salary_path)
            $("#Time_and_time_tracking").html(response.Time_and_time_tracking)
            $("#common_question").html(response.common_question)
            $("#Employee_self_service").html(response.Employee_self_service)
            $("#Welcoming_new_employees").html(response.Welcoming_new_employees)
            $("#Applicant_Tracking_System").html(response.Applicant_Tracking_System)
            $("#All_our_solutions").html(response.All_our_solutions)
            $("#About_the_facility").html(response.About_the_facility)
            $("#About_ZenHR").html(response.About_ZenHR)
            $("#Customer_testimonials").html(response.Customer_testimonials)
            $("#Become_a_partner").html(response.Become_a_partner)
            $("#Join_our_team").html(response.Join_our_team)
          

            






        }
    });
})



     