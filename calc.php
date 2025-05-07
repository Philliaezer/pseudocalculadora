<?php 
    function input($prompt = '')
    {
        echo $prompt;
        return rtrim(fgets(STDIN), "\n");
    }

    $opt = input("Choose (a/b/c/d): ");
    $n1 =  input("Number 1: ");
    $n2 =  input("Number 2: ");
    
    switch ($opt){
        case "a":
            $result=$n1+$n2;
            break;
        case "b":
            $result=$n1-$n2;
            break;
        case "c":
            $result=$n1*$n2;
            break;
        case "d":
            $result=$n1/$n2;
            break;
        default:
            $result="Error";
            break;
    };
    
    echo "Result: ".$result;
?>