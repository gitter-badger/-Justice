package com.cava.DAO.impl;

import com.cava.DAO.SensorDAO;
import com.cava.model.Sensor;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository(value = "sensorDAO")
@Transactional
public class SensorDAOImpl implements SensorDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Sensor> getAll() {

        return sessionFactory.getCurrentSession().createQuery("FROM Sensor").list();
    }
}
