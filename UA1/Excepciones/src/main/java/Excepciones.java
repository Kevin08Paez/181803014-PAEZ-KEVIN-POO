/**
 *
 * @author Kevin_Paez
 */
public class Excepciones {
    public static void main(String args[]){
        int numerador, denominador; 
        //Integer denominador=null;
        float division;
        numerador=20;
        denominador=0;
        
        System.out.println("Antes de la división ");

        try {
            division=numerador/denominador;
        } catch (Exception e) {
            System.out.println(e.getMessage());//getMessage error más específico
            division=0;
        } 
        System.out.println(division);
        System.out.println("Después de la división ");
    }    
}
