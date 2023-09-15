
<html>
    <head>
        <title> LMS Payment  </title>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
    </head>
    <body>
        <div class="d-flex flex-column">
            <div class="container w-50">
                <div class="card mt-5">
                    <!-- <input id="card-holder-name" type="text"> -->
                    
                    <!-- Stripe Elements Placeholder -->
                    <div id="card-element" class="form-control"></div>
                    
                    <button id="card-button" 
                            class="btn btn-primary" 
                            data-secret="{{ $intent->client_secret }}">
                        Update Payment Method
                    </button>
                </div>
    
            </div>  
        </div>
    </body>
</html>



  

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://js.stripe.com/v3/"></script>

<script src="https://js.stripe.com/v2/"></script>

<script>
    // have to read from dont env 
    const stripe = Stripe('pk_test_51LPkfRSBekBSneKQQsHPuD7NOu4TI8uUcj3aLTyHTHkVwy9DnXHzx4iUJccXbeHthyU4BLyCtlFhKvLNqMCqWaoy00aSeyZcZG');

    const elements = stripe.elements();
    const cardElement = elements.create('card');

    cardElement.mount('#card-element');


    const cardHolderName = document.getElementById('card-holder-name');
    const cardButton = document.getElementById('card-button');
    const clientSecret = cardButton.dataset.secret;

    cardButton.addEventListener('click', async (e) => {
        const { setupIntent, error } = await stripe.confirmCardSetup(
            clientSecret, {
                payment_method: {
                    card: cardElement,
                    billing_details: {  }
                }
            }
        );

        if (error) {
            // Display "error.message" to the user...
        } else {
            $.ajax({
                url: "/update-default-pay-method",
                method: "POST",
                data:{
                    "_token": "{{ csrf_token() }}",
                    'identifier' : setupIntent.payment_method 
                },

                success: function(data){
                    // show alert 
                    // take user to his domain 
                    // $('#show_cities').html(data.html);
                    alert('success , default payment method added')
                    window.location.href="/billings/status"
                },

                error : function(data){
                    alert('payment method not added ')
                },
            });


        }
    });

</script>

<style>
    .d-flex  {
        margin-top: 10%;
        /* border: 2px solid lightgray ; */
    }
    /* .container {
        display : flex ;
        flex-direction:column ;
        justify-content: center ;
        align-items: center ;
        border : 2px solid lightgrey ;
        width:30%;
    } */
</style>
