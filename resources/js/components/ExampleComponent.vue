<template>
    <div class="">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Example Component</div>

                    <div class="card-body">
                        hello chart 
                    </div>
                    <RandomChart/>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        components : {
            RandomChart : () => import('./RandomChart'),
        } ,
        data(){
            return {

            }
        },
        mounted() {
            console.log('Component mounted.')
        }
    }
</script>
