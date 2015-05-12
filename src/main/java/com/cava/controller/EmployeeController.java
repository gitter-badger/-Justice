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

import java.util.LinkedList;
import java.util.List;

/**
 * Created by dima on 5/12/15.
 */

@Controller
@RequestMapping(value = "/employee")
public class EmployeeController {

    @Autowired
    EmployeeDAO employeeDAO;

    @Autowired
    SensorDAO sensorDAO;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView manager(){
        List<Employee> employeeList = employeeDAO.getAll();

        List<Employee> employees = new LinkedList<>();

        for (Employee e: employeeList){
            if (e.getFullName().equals("Dima Myna")){
                employees.add(e);
            }
        }

        List<Sensor> sensorList =  sensorDAO.getAll();

        List<Sensor> sensored = new LinkedList<>();

        for (Sensor s: sensorList){
            if (s.getLogin().equals("dima@dima.ua")){
                sensored.add(s);
            }
        }

        ModelAndView modelAndView = new ModelAndView("manager");
        modelAndView.addObject("emploeeList",employees);
        modelAndView.addObject("sensorList",sensored);
        return modelAndView;
    }



}
