/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package customer.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import customer.springboot.domain.Customer;
import customer.springboot.service.CustomerDao;

/**
 *
 * @author indah
 */
@RestController
@RequestMapping("api/customer")
public class CustomerController {
    @Autowired
    private CustomerDao customerDao;
    
    @RequestMapping(value = "/{id}",method = RequestMethod.GET)
    public Customer findCustomerById(@PathVariable String id){
        return customerDao.findOne(id);
    }
    
    @RequestMapping(method = RequestMethod.POST)
    public void save(@RequestBody Customer p){
        customerDao.save(p);
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public Page<Customer> findAll(Pageable pageable){
        return customerDao.findAll(pageable);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public void delete(@PathVariable String id) {
        Customer p = customerDao.findOne(id);
        if(p !=null){
            customerDao.delete(p);
        }
    }
    
    @RequestMapping(value = "/{id}",method = RequestMethod.PUT)
    public void edit(@PathVariable String id, @RequestBody Customer p){
        Customer customer = customerDao.findOne(id);
        if(customer != null){
            p.setId(id);
            customerDao.save(p);
        }
    }
    
}