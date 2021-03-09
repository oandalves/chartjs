<?php
 $pdo = new PDO('mysql:host=localhost;dbname=chartjs;port=3306;charset=utf8', 'root', '');
 $sql = "SELECT nome, venda as vendas FROM venda_vendedor";
 $statement = $pdo->prepare($sql);
 $statement->execute();

 while ($results = $statement->fetch(PDO::FETCH_ASSOC)) {
     $result[] = $results;
 }
 echo json_encode($result);