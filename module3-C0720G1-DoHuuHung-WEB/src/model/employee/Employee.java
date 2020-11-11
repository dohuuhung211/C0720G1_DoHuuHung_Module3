package model.employee;

public class Employee {
    private String employeeName;
    private String dateOfBirth;
    private String idCard;
    private String employeePhoneNumb;
    private String employeeEmail;
    private String education_id;
    private String position_id;
    private double salary;

    public Employee(String employeeName, String dateOfBirth, String idCard, String employeePhoneNumb, String employeeEmail, String education_id, String position_id, double salary) {
        this.employeeName = employeeName;
        this.dateOfBirth = dateOfBirth;
        this.idCard = idCard;
        this.employeePhoneNumb = employeePhoneNumb;
        this.employeeEmail = employeeEmail;
        this.education_id = education_id;
        this.position_id = position_id;
        this.salary = salary;
    }
    public Employee(){
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String name) {
        this.employeeName = name;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getIdCard() {
        return idCard;
    }

    public void setIdCard(String idCard) {
        this.idCard = idCard;
    }

    public String getEmployeePhoneNumb() {
        return employeePhoneNumb;
    }

    public void setEmployeePhoneNumb(String employeePhoneNumb) {
        this.employeePhoneNumb = employeePhoneNumb;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String setEmployeeEmail) {
        this.employeeEmail = setEmployeeEmail;
    }

    public String getEducation_id() {
        return education_id;
    }

    public void setEducation_id(String education_id) {
        this.education_id = education_id;
    }

    public String getPosition_id() {
        return position_id;
    }

    public void setPosition_id(String position_id) {
        this.position_id = position_id;
    }

    public double getSalary() {
        return salary;
    }

    public void setSalary(double salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "name='" + employeeName + '\'' +
                ", dateOfBirth='" + dateOfBirth + '\'' +
                ", idCard=" + idCard +
                ", employeePhoneNumb=" + employeePhoneNumb +
                ", email='" + employeeEmail + '\'' +
                ", education_id='" + education_id + '\'' +
                ", position_id='" + position_id + '\'' +
                ", salary=" + salary +
                '}';
    }
}
