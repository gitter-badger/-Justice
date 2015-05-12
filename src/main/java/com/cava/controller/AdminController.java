package com.cava.controller;

import com.cava.DAO.EmployeeDAO;
import com.cava.DAO.SensorDAO;
import com.cava.model.Employee;
import com.cava.model.Sensor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by dima on 5/12/15.
 */

@Controller
@RequestMapping(value = "/admin")
public class AdminController {

    @Autowired
    EmployeeDAO employeeDAO;

    @Autowired
    SensorDAO sensorDAO;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView manager(){
        List<Employee> employeeList = employeeDAO.getAll();
        List<Sensor> sensorList =  sensorDAO.getAll();

        ModelAndView modelAndView = new ModelAndView("manager");
        modelAndView.addObject("emploeeList",employeeList);
        modelAndView.addObject("sensorList",sensorList);
        return modelAndView;
    }


}
