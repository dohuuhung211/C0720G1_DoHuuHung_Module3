package model.service;

public class Villa extends Service{
    private String standardRoom;
    private String description;
    private double poolArea;
    private int numbFloor;

    public Villa(String serviceName, double serviceArea, double serviceCost, int serviceMaxPeople, String rentType_id,
                 String standardRoom, String description, double poolArea, int numbFloor) {
        super(serviceName, serviceArea, serviceCost, serviceMaxPeople, rentType_id);
        this.standardRoom = standardRoom;
        this.description = description;
        this.poolArea = poolArea;
        this.numbFloor = numbFloor;
    }
    public Villa(){
    }

    public String getStandardRoom() {
        return standardRoom;
    }

    public void setStandardRoom(String standardRoom) {
        this.standardRoom = standardRoom;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPoolArea() {
        return poolArea;
    }

    public void setPoolArea(double poolArea) {
        this.poolArea = poolArea;
    }

    public int getNumbFloor() {
        return numbFloor;
    }

    public void setNumbFloor(int numbFloor) {
        this.numbFloor = numbFloor;
    }

    @Override
    public String toString() {
        return "Villa{" +
                "standardRoom='" + standardRoom + '\'' +
                ", description='" + description + '\'' +
                ", poolArea=" + poolArea +
                ", numbFloor=" + numbFloor +
                "} " + super.toString();
    }
}
