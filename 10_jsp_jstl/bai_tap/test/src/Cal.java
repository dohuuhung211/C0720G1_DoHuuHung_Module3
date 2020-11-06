public class Cal {
    public static float calculator(float somot, float sohai, char toantu){
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
                    throw new RuntimeException("Can't division by 0");
                } default:
                    throw new RuntimeException("Invalid error");
        }
    }
}
