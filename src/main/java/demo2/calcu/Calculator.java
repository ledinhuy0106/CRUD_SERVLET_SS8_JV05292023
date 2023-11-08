package demo2.calcu;

public class Calculator {

    public static float calculate(float firstOperand, float secondOperand, String operator ){
        switch (operator){
            case "+":
                return firstOperand + secondOperand;
            case "-":
                return firstOperand - secondOperand;
            case "*":
                return firstOperand * secondOperand;
            case "/":
                if(secondOperand != 0)
                    return firstOperand / secondOperand;
                else
                    throw new RuntimeException("Không chia cho 0");
            default:
                throw new RuntimeException("invalid");
        }
    }
}