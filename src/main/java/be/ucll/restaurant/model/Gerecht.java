package be.ucll.restaurant.model;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class Gerecht {
    int id;

    @NotNull
    @NotEmpty
    String omschrijving;

    @NotNull
    @Min(0)
    double prijs;

    public Gerecht(int id, String omschrijving, double prijs){
        setId(id);
        setOmschrijving(omschrijving);
        setPrijs(prijs);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOmschrijving() {
        return omschrijving;
    }

    public void setOmschrijving(String omschrijving) {

        this.omschrijving = omschrijving;
    }

    public double getPrijs() {
        return prijs;
    }

    public void setPrijs(double prijs) {

        this.prijs = prijs;
    }
}
