
<div>    
    <select name="" id="time-range">
        <option value="weekly">weekly</option>
        <option value="monthly">monthly</option>
        <option value="yearly">yearly</option>
    <select>
</div>

<div class="charts">
    <div>
        @include('partials.pie')
    </div>
    <div>
        @include('partials.line')
    </div>
    <div>
        @include('partials.bar')
    </div>

</div>
<!-- @include('partials.bar') -->
<!-- @include('partials.bar2') -->
<script>
    document.querySelector("#time-range").addEventListener('change',function(event){
        //  alert(event.target.value)
        // change config
        // process data on controller according to config     
        window.location.href = '/admin'
    })    
</script>
<style>
 .charts > div {
     margin-bottom : 50px ;
 }
</style>