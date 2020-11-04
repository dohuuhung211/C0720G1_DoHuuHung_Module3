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
                    throw new RuntimeException("Co loi: khong the chia cho 0");
                } default:
                    throw new RuntimeException("Sai dinh dang");
        }
    }
}
