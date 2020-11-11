package model.service;

public class House extends Service {
    private String standardRoom;
    private String description;
    private int numbFloor;
    public House(){}

    public House(String serviceName, double serviceArea, double serviceCost, int serviceMaxPeople, String rentType_id,
                 String standardRoom, String description, int numbFloor) {
        super(serviceName, serviceArea, serviceCost, serviceMaxPeople, rentType_id);
        this.standardRoom = standardRoom;
        this.description = description;
        this.numbFloor = numbFloor;
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

    public int getNumbFloor() {
        return numbFloor;
    }

    public void setNumbFloor(int numbFloor) {
        this.numbFloor = numbFloor;
    }

    @Override
    public String toString() {
        return "House{" +
                "standardRoom='" + standardRoom + '\'' +
                ", description='" + description + '\'' +
                ", numbFloor=" + numbFloor +
                "} " + super.toString();
    }
}
