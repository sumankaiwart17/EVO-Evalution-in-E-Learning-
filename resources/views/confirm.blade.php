<html>
    <head>
        <title> Email confirmation </title>
    </head>
    <body>
        <div class="flex-container">
            <div>

                @if($user)
                    <h1><b>{{ $user->email }}</b>  <i>confirmed</i>   </h1>
                    <h2>
                        <!-- <a href={{"http://$user->name.custom-development.xyz/home/login"}}>login</a> -->
                        
                        <a href={{ "/billings/status" }}>set up</a> payment method  
                    </h2>
                @else 
                    
                @endif
            </div>
            
        </div>
    </body>
</html>


<style>
body{
    background-color: aliceblue;
    font-family: "Nunito", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji"
}
.flex-container{
    display: flex ;
    flex-direction: column;
    align-items: center;
    margin-top:10%;
}

.flex-container>div{
    border: 2px solid lightgray ;
    padding: 30px;
    box-shadow: 5px 5px 5px lightgray;
    background-color: white;
}

</style>