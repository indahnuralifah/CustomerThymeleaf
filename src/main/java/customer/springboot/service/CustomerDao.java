/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package customer.springboot.service;

import java.io.Serializable;
import org.springframework.data.repository.PagingAndSortingRepository;
import customer.springboot.domain.Customer;


/**
 *
 * @author indah
 */
public interface CustomerDao extends PagingAndSortingRepository<Customer, String>{
    
}

