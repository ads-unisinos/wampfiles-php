<?php 

require_once("Animal.php");

class Inseto extends Animal
{
    private $quantasPatas;

    public function __construct (string $nome, string $ordem, int $quantasPatas)
    {
        parent::__construct($nome, $ordem);
        $this->quantasPatas = $quantasPatas;
    }

    public function mostraDados (){
        echo "o $this->nome e da ordem $this->ordem";
        echo "e eh um inseto com $this->quantasPatas patas." . "\n";
    }
}




?>