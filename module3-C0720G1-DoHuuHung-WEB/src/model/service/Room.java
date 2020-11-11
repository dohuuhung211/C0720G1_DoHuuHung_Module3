package model.service;

public class Room extends Service {
    private String serviceFreeBonus;

    public Room(String serviceName, double serviceArea, double serviceCost, int serviceMaxPeople, String rentType_id, String serviceFreeBonus) {
        super(serviceName, serviceArea, serviceCost, serviceMaxPeople, rentType_id);
        this.serviceFreeBonus = serviceFreeBonus;
    }
    public Room(){}

    public String getServiceFreeBonus() {
        return serviceFreeBonus;
    }

    public void setServiceFreeBonus(String serviceFreeBonus) {
        this.serviceFreeBonus = serviceFreeBonus;
    }

    @Override
    public String toString() {
        return "Room{" +
                "serviceFreeBonus='" + serviceFreeBonus + '\'' +
                "} " + super.toString();
    }
}
