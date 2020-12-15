package com.cts.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cts.service.Flight;
import com.cts.service.Service;

@Controller
public class Main {
	
	@GetMapping("/main-page")
	public String mainPage() {
		return "main-page";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String showLoginpage(@ModelAttribute("login") LoginBean loginBean) {
		return "admin";

	}
	
	@RequestMapping(value = "/submitlogin", method = RequestMethod.POST)
	public String checkLoginDetails(ModelMap model, @ModelAttribute("login") LoginBean loginBean)
			throws SQLException {

		if ((loginBean.getUserName().equals("jayavardhan"))&&(loginBean.getPassword().equals("jayavardhan123"))) {
			Service s = new Service();
			List<Flight> li = s.getMenuItemList();
			model.addAttribute("list", li);

			return "admin-after-login";
		} else {
			model.addAttribute("error", 1);
			return "admin";
		}

	}
	
	@GetMapping("/admin-after-login")
	public String Admin(ModelMap model) throws SQLException {
		Service s = new Service();
		List<Flight> li = s.getMenuItemList();
		model.addAttribute("list", li);
		return "admin-after-login";
	}

	

	@GetMapping("/add-item")
	public String addItem(ModelMap model) throws SQLException {
		Service s = new Service();
		return "add-item";
	}

	@GetMapping("/add-item-status")
	public String addItem(ModelMap model, @RequestParam String name, @RequestParam String sour,
			@RequestParam String dest, @RequestParam String type, @RequestParam String stops,
			@RequestParam String price) throws SQLException {
		Service s = new Service();
		List<Flight> li = s.getMenuItemList();
		int size = li.size();
		Flight f1 = new Flight(size, name, sour, dest, type, Integer.valueOf(stops), Float.valueOf(price));

		s.addItem(f1);
		return "add-item-status";

	}

	@GetMapping("/delete-item")
	public String DeleteItem(@RequestParam int itemId, ModelMap model) throws SQLException {
		Service s = new Service();
		boolean f1;
		f1 = s.deleteItem(itemId);
		System.out.println(itemId);
		return "delete-item-status";
	}

	@GetMapping("/edit-item")
	public String showEditItem(@RequestParam int itemId, ModelMap model) throws SQLException {
		Service s = new Service();
		Flight f1 = new Flight();
		f1 = s.getItem(itemId);

		model.put("list", f1);
		return "edit-item";
	}


	@PostMapping("/edit-item")
	public String editMenuItem(ModelMap model, @ModelAttribute("list") Flight fl) throws SQLException {
		Service s = new Service();
		s.modifyItem(fl);
		return "edit-item-status";

	}

	
	
	@RequestMapping(value = "/customer", method = RequestMethod.GET)
	public String showLoginpageCustomer(@ModelAttribute("login") LoginBean loginBean) {
		return "cust";

	}

	@RequestMapping(value = "/submitlogin1", method = RequestMethod.POST)
	public String checkLoginDetailsCustomer(ModelMap model, @ModelAttribute("login") LoginBean loginBean) throws SQLException {

		if (LoginService.validate(loginBean)) {
			Service s = new Service();
			List<Flight> li = s.getMenuItemList();
			model.addAttribute("list", li);

			return "cust-after-login";
		} else {
			model.addAttribute("error", 1);
			return "cust";
		}
	}


	@GetMapping("/cust-after-login")
	public String CustAfterLogin(ModelMap model) throws SQLException {
		Service s = new Service();

		List<Flight> li = s.getMenuItemList(); 
		model.addAttribute("list", li);
		return "cust-after-login";
	}
	
	@GetMapping("/book-item")
	public String Book() {
		Service s = new Service();
		return "book-item-status";
	}
	
	@GetMapping("/sort-item")
	public String SortItem() throws SQLException {
		Service s = new Service();

		return "sort-item";
	}

	@GetMapping("/empty")
	public String empty() {
		Service s = new Service();

		return "empty";
	}



	@GetMapping("/sort-item-status")
	public String sortItemStatus(ModelMap model, @RequestParam String sour, @RequestParam String dest,
			@RequestParam String type) throws SQLException {
		Service s = new Service();
		List<Flight> li = s.getMenuItemList();
		List<Flight> li1 = new ArrayList<>();
		//System.out.println(sour);
		//System.out.println(dest);

		for (Flight f : li) {
			if (f.getF_sour().equals(sour) && f.getF_dest().equals(dest) && f.getF_type().equals(type)) {
				li1.add(f);
			}
		}
		model.addAttribute("list", li1);
		if (li1.size() == 0) {
			return "empty";
		}
		return "sort-item-status";

	}

}
