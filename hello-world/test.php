<html>
    
<title>Hypertext Preprocessor</title>
<body>
           

<?php 
$dayOfWeek = "Monday";
$name = "John";

echo "Hey, ". "<strong>$name</strong>";

echo "today is " . $dayOfWeek ;
if ($name === "Antonio"){
    echo "click <a href='http://www.google.com' target='_blank'>here</a> to navegate to Google.";
}

echo "Bitwise operators";
$resultado = 178 & 127 ;
echo "resultado é ". $resultado ;

$firstname = "123";
$lastname = 123;

echo "<p>spacer</p>";

if ($firstname === $lastname){
    echo gettype($dayOfWeek) . " is equal ". gettype($lastname);
    echo $firstname . " is equal ". $lastname ;
}

?>

<p> this is a spacer</p>

<div>
    click <a href="http://www.google.com" target="_blank">here</a> to navegate to Google.
</div>

</body>
</html>
