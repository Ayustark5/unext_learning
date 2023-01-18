package Day3;

public class Assignment1 {

    public void maxOfThree(int num1, int num2, int num3){
        System.out.println("Supplied numbers are: " + num1 + " " + num2 + " " + num3);
        System.out.println("Max of the supplied values is: " + Math.max(Math.max(num1, num2), num3));
    }

    public void swapWithThirdVar(int num1, int num2){
        System.out.println("Supplied numbers are: " + num1 + " " + num2);
        int temp = num2;
        num2 = num1;
        num1 = temp;
        System.out.println("Swapped number are: " + num1 + " " + num2);
    }

    public void swap(int num1, int num2){
        System.out.println("Supplied numbers are: " + num1 + " " + num2);
        num1 = num1 + num2;
        num2 = num1 - num2;
        num1 = num1 - num2;
        System.out.println("Swapped number are: " + num1 + " " + num2);
    }

    public void checkInteger(int num){
        System.out.println("Given number is: " + num);
        if(num > 0){
            System.out.println("Number is positive");
        }else if(num < 0){
            System.out.println("Number is negetive");
        }else{
            System.out.println("Number is zero");
        }
    }

    public void checkPrime(int num){
        System.out.println("Given number is: " + num);
        boolean isPrime = true;
        for(int i = 2; i<num; i++){
            if(num%i==0){
                isPrime = false;
            }
        }
        if (isPrime){
            System.out.println("Number is prime");
        }else{
            System.out.println("Number is not prime");
        }
    }

    public void checkPalindrome(int num){
        System.out.println("Given number is: " + num);
        int n = num;
        int rev = 0;
        while(n>0){
            rev = rev * 10 + n%10;
            n = n/10;
        }
        if(rev == num){
            System.out.println("Number is palindrome");
        }else{
            System.out.println("Number is not palindrome");
        }
    }

    public void launchEmployee(){
        Employee.launch();
    }

}
