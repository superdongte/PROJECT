package co.yi.Controller;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import co.yi.Controller.HomeController;
import co.yi.domain.ProjectSpms;
import co.yi.service.ProjectService;

@Controller
@RequestMapping("/pro/")
public class ProjectController {
	
	@Autowired
	private ProjectService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value="listPro",method=RequestMethod.GET)
	public void listAll(Model model) {
		List<ProjectSpms> list = service.listAll();
		model.addAttribute("list",list);
	}
	@RequestMapping(value="insertPro", method=RequestMethod.GET)
	public void insertGet() {
		logger.info("insert ------ get");
	}
	@RequestMapping(value="insertPro", method=RequestMethod.POST)
	public String insertPost(ProjectSpms pro, Model model) {
		logger.info("insert ------ post");
		service.insert(pro);
		model.addAttribute("result","success");
		return "redirect:/pro/listPro";
	}
	@RequestMapping(value="read", method=RequestMethod.GET)
	public void read(@RequestParam("project_no") int project_no, Model model) {
		ProjectSpms pro = service.read(project_no);
		model.addAttribute("Project_no", pro);
	}
	@RequestMapping(value="update", method=RequestMethod.GET)
	public void updateGet(@RequestParam("project_no") int project_no, Model model) {
		ProjectSpms upro = service.read(project_no);
		model.addAttribute("project_no", upro);
	}
	@RequestMapping(value="update", method=RequestMethod.POST)
	public String updatePost(ProjectSpms pro) {
		logger.info(pro+"--------post");
		service.update(pro);
		return "redirect:/pro/listPro";
	}
	@RequestMapping(value="delete", method=RequestMethod.POST)
	public String delete(@RequestParam("project_no") int project_no, Model model) {
		service.delete(project_no);
		return "redirect:/pro/listPro";
	}
}
