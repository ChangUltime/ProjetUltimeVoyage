package fr.adaming.controllers;
import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController{

	@RequestMapping(value="/login", method=RequestMethod.GET)
	public ModelAndView afficheConnectionForm(ModelAndView modelView){
		modelView.setViewName("loginPage");
		return modelView;
	}
	
	@RequestMapping(value="/loginEchec", method=RequestMethod.GET)
	public ModelAndView retourLogin(ModelAndView modelView){
		modelView.setViewName("loginPage");
		modelView.addObject("erreur", true);
		return modelView;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logoutAccueil(HttpSession session){
		
		session.invalidate();

		return "redirect:listeVoyage";
	}
	
}
