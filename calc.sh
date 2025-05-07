calc_add(){
    expr $1 + $2
}

calc_sub(){
    expr $1 - $2
}

calc_mul(){
    expr $1 * $2
}

calc_div(){
    expr $1 / $2
}

echo "Choose (a/b/c)d)"
read opts

echo "Number 1: "
read a
echo "Number 2: "
read b

case "$opts" in
    a)
        c=`calc_add $a $b`
        ;;
        
    b)
        c=`calc_sub $a $b`
        ;;
        
    c)
        c=`calc_mul $a $b`
        ;;
        
    d)
        c=`calc_div $a $b`
        ;;
    *)
        c=Error
        ;;
esac

echo "Result: $c"