$('document').ready(function() {
    $.ajax({
        type: "POST",
        url: "class/chart.php",
        dataType: "json",
        success: function(data) {

            var nomearray = [];
            var vendasarray = [];

            for (var i = 0; i < data.length; i++) {
                nomearray.push(data[i].nome);
                vendasarray.push(data[i].vendas);
            }
            //console.log(nomearray, vendasarray);
            grafico(nomearray, vendasarray);
        }
    });
});

function grafico(nomes, vendas) {
    var ctx = document.getElementById('myChart').getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: nomes,
            datasets: [{
                label: 'Quantidade de vendas',
                data: vendas,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
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
                        beginAtZero: true
                    }
                }]
            }
        }
    });
}