<?php

// global scope - as funções não precisam ser criadas antes de serem referenciadas.
// excepto se for definida condicionalmente.

$makefoo = true;

bar();

if ($makefoo)
{
    function foo()
    {
        echo "Eu não existo até que o programa passe por aqui.\n ";
    }
}

if($makefoo) foo();

function bar()
{
    echo "Eu existo imediatamente desde o inicio do programa. \n";
}

?>