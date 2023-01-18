import java.util.Scanner;

public class Question1{
    public static void main(String[] args){
        System.out.println("Enter two values: ");
        Scanner sc = new Scanner(System.in);
        int a = sc.nextInt();
        int b = sc.nextInt();
        a = a + b;
        b = a - b;
        a = a - b;
        System.out.println("Swapped values are: " + a + " " + b);
    }
}

