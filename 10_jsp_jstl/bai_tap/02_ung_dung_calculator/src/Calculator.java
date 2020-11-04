public class Calculator {
    public static float calculate(float somot, float sohai, char toantu){
        switch (toantu){
            case '+':
                return somot + sohai;
            case '-':
                return somot - sohai;
            case '*':
                return somot * sohai;
            case '/':
                if (sohai != 0){
                    return somot / sohai;
                } else {
                    throw new RuntimeException("Khong the chia cho 0");
                } default:
                    throw new RuntimeException("Khong hop le");
        }
    }
}
