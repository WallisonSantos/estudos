public class App {
    public static void main(String[] args) throws Exception {

        double raio = 3.14;
        final double PI = 3.14159;

        double area = PI * raio * raio;

        final double FATOR  = 5.0 / 9.0;
        final double AJUSTE = 32;
        double fahrenheit   = 86;
        double celsius      = (fahrenheit - AJUSTE) *  FATOR;


        System.out.println(area);
        System.out.println(celsius);

   }
}