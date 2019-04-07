package be.ucll.restaurant.model;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

@Service
public class GerechtenService {
    private List<Gerecht> gerechten = new ArrayList<>();
    private AtomicInteger nextId = new AtomicInteger();

    public GerechtenService(){
        gerechten.add(new Gerecht(nextId.incrementAndGet(), "Ballekes in tomatensaus", 14.5));
        gerechten.add(new Gerecht(nextId.incrementAndGet(), "Vol au vent", 12));
        gerechten.add(new Gerecht(nextId.incrementAndGet(), "Biefstuk friet", 20));
    }

    public List<Gerecht> getGerechten(){
        return gerechten;
    }

    public Gerecht getGerechtById(int id){
        return gerechten.get(id);
    }
}
