
<?php

$cars = array("Volvo", "BMW", "Toyota");
takes_array($cars);


function takes_array ( $input)
{
    echo "I like " . $input[0] . ", ". "i like ". $input[1] . ", " . "i like " . $input[2];
}

// argumentos de função com uma virgula no final
function takes_many_args(
    $primeiro,
    $segundo,
    $uma_variavel_com_nome_longo, // até são argumentos obrigatórios. os demais são opcionais.
    $parametro_com_default = 5,
    $de_novo = 'argumento padrão', // Essa vírgula final não era permitida antes do PHP 8.0.0.
)
{
    // your code goes here ...
}


// PHP is a loosely typed language.
// PHP 7 type declaration where added.
// This gives us an option to specify the expected data type when declaring a function, 
// it will throw a "Fatal Error" if the data type mismatches.

function addNumbers (int $a, int $b)
{
    return $a + $b ;
}

echo "<br><br>";
echo addNumbers(5, "5 days");



?>