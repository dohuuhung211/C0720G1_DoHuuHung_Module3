package CustomerDao;

import Customers.Customers;

import java.util.ArrayList;
import java.util.List;

public class CustomerDao {
    static List<Customers> listCustomer;
    static {
        listCustomer = new ArrayList<>();
        listCustomer.add(new Customers("Mai Văn Hoàng", "1983-08-20", "Hà Nội", "anh1.jpg"));
        listCustomer.add(new Customers("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "anh3.jpg"));
        listCustomer.add(new Customers("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "anh4.jpg"));
        listCustomer.add(new Customers("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "anh5.jpg"));
        listCustomer.add(new Customers("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "anh2.jpg"));
    }
    public static List<Customers> getAllCustomer(){
        return listCustomer;
    }
}
