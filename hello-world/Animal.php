<?php 

class Animal {

    protected $nome;
    protected $ordem;
    public static $reino = "Animal";

    public function __construct (string $nome, string $ordem){
        $this->nome = $nome;
        $this->ordem = $ordem;
    }

    public function registraAninal(Animal $umAnimal, $prioridade){}

    public function mostraDados(){
        echo "o $this->nome e da ordem $this->ordem";
    }
}

?>