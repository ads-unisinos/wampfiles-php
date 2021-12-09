<?php
// Gerenciadores de pacotes do PHP: Composer
$cores = array("vermelho", "verde", "amarelo", "branco");

foreach ($cores as $nomeCor) {
    echo "<br>A cor se chama $nomeCor";
}

// Array assossiativos = dicionários
$paises = array(
    "BR" => "Brasil",
    "US"=> "Estados Unidos",
    "AO" => "Angola");

echo "<br><br>";

foreach ($paises as $key => $value) {
    echo "<br>eu vivo em " . $value . " - " . $key; 
}

echo "<br><br>";

foreach ( $cores as & $nomeCor){
    if ( $nomeCor == "verde") {$nomeCor = "violeta";}
    echo "<br>A cor se chama $nomeCor";
}

echo "<br><br>";

sort($cores);
print_r($cores);


echo "<br>" . implode(" ", $cores);
?>