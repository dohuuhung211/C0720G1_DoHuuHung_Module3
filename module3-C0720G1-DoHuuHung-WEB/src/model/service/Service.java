package model.service;

public class Service {
    private String serviceName;
    private double serviceArea;
    private double serviceCost;
    private int serviceMaxPeople;
    private String rentType_id;
    public Service() {
    }

    public Service(String serviceName, double serviceArea, double serviceCost, int serviceMaxPeople, String rentType_id) {
        this.serviceName = serviceName;
        this.serviceArea = serviceArea;
        this.serviceCost = serviceCost;
        this.serviceMaxPeople = serviceMaxPeople;
        this.rentType_id = rentType_id;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public double getServiceArea() {
        return serviceArea;
    }

    public void setServiceArea(double serviceArea) {
        this.serviceArea = serviceArea;
    }

    public double getServiceCost() {
        return serviceCost;
    }

    public void setServiceCost(double serviceCost) {
        this.serviceCost = serviceCost;
    }

    public int getServiceMaxPeople() {
        return serviceMaxPeople;
    }

    public void setServiceMaxPeople(int serviceMaxPeople) {
        this.serviceMaxPeople = serviceMaxPeople;
    }

    public String getRentType_id() {
        return rentType_id;
    }

    public void setRentType_id(String rentType_id) {
        this.rentType_id = rentType_id;
    }
}
