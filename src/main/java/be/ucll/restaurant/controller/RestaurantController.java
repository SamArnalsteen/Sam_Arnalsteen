package be.ucll.restaurant.controller;

import be.ucll.restaurant.model.Gerecht;
import be.ucll.restaurant.model.GerechtenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Controller
public class RestaurantController implements WebMvcConfigurer {
    @Autowired
    private GerechtenService gerechtenService;

    @GetMapping("/home")
    public String home(){
        return "index";
    }

    @GetMapping("/gerechten")
    public String gerechten(Model model){
        model.addAttribute("gerechten", gerechtenService.getGerechten());
        return "gerechten";
    }

    @GetMapping("/gerechten/change/{id}")
    public String gerechtenUpdate(@PathVariable(value = "id")int id, Model model){
        Gerecht gerecht = gerechtenService.getGerechtById(id-1);
        model.addAttribute("gerecht", gerecht);
        return "gerechtenChange";
    }

    @GetMapping("/gerechten/add")
    public String gerechtenAdd(){
        return "gerechtenAdd";
    }

}
