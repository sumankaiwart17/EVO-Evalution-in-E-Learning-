<canvas id="chart-1" width="100" height="25"></canvas>
{{ json_encode( $data['dates']) }}
<script>
$(function () {
    var ctx = document.getElementById("chart-1").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: ["sat", "sun", "mon", "tue", "wed", "thu"],
            // labels: ["2020-10-29", "2020-10-28"],
            // labels:  "{{ json_encode( $data['dates']) }}"  ,
            datasets: [{
                label: 'User Statistics',
                data: [12, 19, 3, 5, 2, 3],
                // data: JSON.parse( "{{ json_encode( $data['counts']) }}" ),

                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true,
                        stacked : true ,
                    }
                }]
            }
        }
    });
});
</script>