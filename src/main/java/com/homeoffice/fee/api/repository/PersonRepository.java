package com.homeoffice.fee.api.repository;

import com.homeoffice.fee.api.model.Person;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface PersonRepository extends MongoRepository<Person, String> {

    Person findById(String id);
    Person findByFirstName(String firstName);
    Person findByFirstNameAndLastName(String firstName, String lastName);
    List<Person> findByLastName(String lastName);

}
