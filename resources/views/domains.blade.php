@extends('layouts.app')
@section('content')

    @include('partials.faq')
    <div class="container border">
        <div class="panel-body">
            <!-- Display Validation Errors -->
            @include('common.errors')
    
            <!-- New Task Form -->
            <form action="/domain" method="POST" class="form-horizontal">
                {{ csrf_field() }}
    
                <!-- Task Name -->
                <div class="form-group">
                    <label for="task-name" class="col-sm-3 control-label">Domain</label>
    
                    <div class="col-sm-6">
                        <input type="text" name="domain" id="task-name" class="form-control">
                    </div>
                </div>
    
                <!-- Add Task Button -->
                <div class="form-group">
                    <div class="col-sm-offset-3 col-sm-6">
                        <button type="submit" class="btn btn-default">
                            <i class="fa fa-plus"></i> Add Domain
                        </button>
                    </div>
                </div>
            </form>
        </div>
    
        <!-- TODO: Current Tasks -->



        @if (count($domains) > 0)
        <div class="panel panel-default">
            <div class="panel-heading">
                Current domains
            </div>

            <div class="panel-body">
                <table class="table table-striped domain-table">

                    <!-- Table Headings -->
                    <thead>
                        <th>domain</th>
                        <th>action</th>
                    </thead>

                    <!-- Table Body -->
                    <tbody>
                        @foreach ($domains as $domain)
                            <tr >
                                <!-- domain Name -->
                                <td class="table-text">
                                    <div>{{ $domain->domain }}</div>
                                </td>

                                <!-- Delete Button -->
                                <td>
                                    <form action="/domain/{{ $domain->id }}" method="POST" class="form{{$domain->id}}" >
                                        {{ csrf_field() }}
                                        {{ method_field('DELETE') }}

                                        {{-- <button class="action-btn"> <i class="fa fa-link" type="submit"></i></button> --}}
                                        
                                        <a href="http://{{$domain->domain}}" target="_blank"  class="action-btn" data-toggle="tooltip" title="open link in new tab">
                                            <i class="fa fa-link"></i>
                                        </a>       
                                        <a href="#myModal{{$domain->id}}" class="trigger-btn action-btn" data-toggle="modal" >
                                            <i class="fa fa-trash" data-toggle="tooltip" title="delete domain"></i>
                                        </a>       
                                        
                                        <div>
                                            <div class="">
                                                <!-- Button HTML (to Trigger Modal) -->
                                                {{-- <a href="#myModal" class="trigger-btn" data-toggle="modal">Click to Open Confirm Modal</a> --}}
                                            </div>
                                            
                                            <!-- Modal HTML -->
                                            <div id="myModal{{$domain->id}}" class="modal fade">
                                                <div class="modal-dialog modal-confirm">
                                                    <div class="modal-content">
                                                        <div class="modal-header flex-column">
                                                            <div class="icon-box">
                                                                <i class="material-icons">&#xE5CD;</i>
                                                            </div>						
                                                            <h4 class="modal-title w-100">Delete <b> <i>{{ $domain->domain }}</i> </b> ?</h4>	
                                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <p>Do you really want to delete this  domain ? This process cannot be undone.</p>
                                                        </div>
                                                        <div class="modal-footer justify-content-center">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                            <button type="button" class="btn btn-danger" data-dlt="{{ $domain->id}}" onclick="delete_domain('{{$domain->id}}')">Delete</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> 


                                        </div>                                       
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    @endif

    </div>

@endsection



<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
{{-- <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script> --}}

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
{{-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script> --}}


<style>
    body {
        font-family: 'Varela Round', sans-serif;
    }
    .modal-confirm {		
        color: #636363;
        width: 400px;
    }
    .modal-confirm .modal-content {
        padding: 20px;
        border-radius: 5px;
        border: none;
        text-align: center;
        font-size: 14px;
    }
    .modal-confirm .modal-header {
        border-bottom: none;   
        position: relative;
    }
    .modal-confirm h4 {
        text-align: center;
        font-size: 26px;
        margin: 30px 0 -10px;
    }
    .modal-confirm .close {
        position: absolute;
        top: -5px;
        right: -2px;
    }
    .modal-confirm .modal-body {
        color: #999;
    }
    .modal-confirm .modal-footer {
        border: none;
        text-align: center;		
        border-radius: 5px;
        font-size: 13px;
        padding: 10px 15px 25px;
    }
    .modal-confirm .modal-footer a {
        color: #999;
    }		
    .modal-confirm .icon-box {
        width: 80px;
        height: 80px;
        margin: 0 auto;
        border-radius: 50%;
        z-index: 9;
        text-align: center;
        border: 3px solid #f15e5e;
    }
    .modal-confirm .icon-box i {
        color: #f15e5e;
        font-size: 46px;
        display: inline-block;
        margin-top: 13px;
    }
    .modal-confirm .btn, .modal-confirm .btn:active {
        color: #fff;
        border-radius: 4px;
        background: #60c7c1;
        text-decoration: none;
        transition: all 0.4s;
        line-height: normal;
        min-width: 120px;
        border: none;
        min-height: 40px;
        border-radius: 3px;
        margin: 0 5px;
    }
    .modal-confirm .btn-secondary {
        background: #c1c1c1;
    }
    .modal-confirm .btn-secondary:hover, .modal-confirm .btn-secondary:focus {
        background: #a8a8a8;
    }
    .modal-confirm .btn-danger {
        background: #f15e5e;
    }
    .modal-confirm .btn-danger:hover, .modal-confirm .btn-danger:focus {
        background: #ee3535;
    }
    /* .trigger-btn {
        display: inline-block;
        margin: 100px auto;
    } */
    .action-btn {
        border-radius: 50% ;
        height : 30px ;
        width : 30px ;
    }
    </style>
<script>
    function handel_click(e){
        e.preventDefault()
    }
    function delete_domain(arg) {
        // console.log(event.target)
        document.querySelector(`.form${arg}`).submit()
    }
</script>
<script>


// (function() {
//    // your page initialization code here
//    // the DOM will be available here
//     document.querySelector("#down-arrow").style.display = "none" //hide()
//     document.querySelector("#up-arrow").style.display= "inline" //.show()
//     document.querySelector("#faq-drop").style.display= "block" //.show()

// })();    

    function show_faq() {
        
        // $("#down-arrow").hide()
        // $("#up-arrow").show()
        // $("#faq-drop").show()
        document.querySelector("#down-arrow").style.display = "none" //hide()
        document.querySelector("#up-arrow").style.display= "inline" //.show()
        document.querySelector("#faq-drop").style.display= "block" //.show()
    }
    
    function hide_faq() {
        // $("#down-arrow").show()
        // $("#up-arrow").hide()
        // $("#faq-drop").hide()
        document.querySelector("#down-arrow").style.display = "inline" //hide()
        document.querySelector("#up-arrow").style.display= "none" //.show()
        document.querySelector("#faq-drop").style.display= "none" //.show()
    }
    </script>
