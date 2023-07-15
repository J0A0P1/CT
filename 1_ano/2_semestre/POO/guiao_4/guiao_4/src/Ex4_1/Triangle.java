package Ex4_1;
import java.util.Scanner;
public class Triangle {
    public static String[] qqq() {
        double side1, side2, side3;
        Scanner sc = new Scanner(System.in);
        String[] shape = new String[4];
            shape[0]="Triângulo";
            System.out.println("Introduza o comprimento do primeiro lado: ");
            shape[1]=sc.next();
            System.out.println("Introduza o comprimento do segundo lado: ");
            shape[2]=sc.next();
            System.out.println("Introduza o comprimento do terceiro lado: ");            
            shape[3]=sc.next();
        return shape;
    }
}
