function atriangle($a, $b)
{
	$a = $args[0]
	$b = $args[1]
   	Write-Host "The area for a triangle with base $a and height $b is " ($a*$b/2)
}

for ($a=1; $a<101; $a++) 
{
    for ($b=1; $b<101; $b++)
    {
        atriangle $a $b
    }
}