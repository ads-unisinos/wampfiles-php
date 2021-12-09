<?php

require_once("Animal.php");

$bicho = new Animal("cachorro", "carnivoro");
$bicho->mostraDados();

echo "<br>A classe " . get_class($bicho) . " tem dois atributos.<br><br>";

$outroBicho = new Animal ("homem", "primata");
$outroBicho->mostraDados();

echo "<br>";
echo Animal::$reino . "\n";


?>