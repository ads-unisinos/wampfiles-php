<?php 
function inverse(int $x)
{
    if(!$x){
        throw new Exception("Zero division. Please check the input.");
    }
    return 1/$x ;
}

try {
    echo inverse(5) ."<br>";
} catch (Exception $e) {
    echo 'Exception captured: ', $e->getMessage() , "<br>";
}
finally {
    echo "primeiro finally.<br>";
}



try {
    echo inverse(0) . "<br>";
} catch (Exception $e) {
    echo "Exception captured: ", $e->getMessage(), "<br>";
}
finally{
    echo "Second Finally.<br>";
}


echo "<br>Olá mundo!!!";

?>