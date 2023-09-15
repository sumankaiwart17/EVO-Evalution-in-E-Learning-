
<div id="call_history" >
        <ul class="list-group">
        <li class="list-group-item">loading </li>


        </ul>
</div>


<script>



jQuery.ajax({

    method: 'GET' ,
    url : 'http://localhost/academylms/academylms/Demo/call_history/',
    success: function(data,success){
        console.log(data)
        add_call_h_to_dom(data)
    },
    error : function (error){
        consoel.log(error)
    }
})


function add_call_h_to_dom(data){
  let parsed_data = JSON.parse( data )
  let tmp = `` ;
  for(let i = 0 ; i< parsed_data.length ; i++){
    tmp += `
      <li class="list-group-item" >
      from [ ${parsed_data[i].to} ] to [ ${parsed_data[i].to} ] <br/>
          (  ${parsed_data[i].duration} sec) <br/>
          
      </li>
    `
  }
  
  $("#call_history > ul").html(tmp)
}


</script>