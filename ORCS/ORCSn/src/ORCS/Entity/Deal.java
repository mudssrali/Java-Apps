package ORCS.Entity;
public class Deal
{
    private int ID;
    private String Name;
    private int Quantity;

    public Deal() {
        this.ID = 45;
        Name = "Pasta Mold";
        Quantity = 2;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public int getQuantity() {
        return Quantity;
    }

    public void setQuantity(int quantity) {
        Quantity = quantity;
    }
}
