<?php 

$x = 5867;
$f = 10.365;

var_dump($x);
var_dump($f);

echo "<br>";

$cars = array("Volvo", "BMW", "Toyota");
var_dump($cars);

echo "<br>PHP Object <br>";

class Car {
    public $model;
    public $color;

    public function __construct (string $color, string $model)
    {
        $this->model = $model;
        $this->color = $color;
    }

    public function message ()
    {
        return "My car is " .$this->color . " " . $this->model . "!" ;
    }
}

$myCar = new Car("black", "Volvo");
echo $myCar -> message() . "<br>";
$myCar = new Car("red", "Toyota");
echo $myCar -> message() ."<br>";

?>