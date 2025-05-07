class Calc{
    static function main(){
        Sys.println("Choose (a/b/c/d): ");
        var opts = Sys.stdin().readLine();
        Sys.println("Olá! Digite n1: ");
        var n1 = Sys.stdin().readLine();
        Sys.println("Olá! Digite n2: ");
        var n2 = Sys.stdin().readLine();
        
        switch (opts){
            case "a":
                var res = n1+n2;
             case "b":
                 var res = n1-n2;
            case "c":
                var res = n1*n2;
             case "d":
                 var res = n1/n2;
             case _:
                 var res = "No result";
        }
        
        // Testar sem aspas
        Sys.println('Resultado: $res');
    }
}