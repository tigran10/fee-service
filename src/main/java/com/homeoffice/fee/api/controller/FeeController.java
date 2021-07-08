package com.homeoffice.fee.api.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FeeController {

    @RequestMapping("/fee")
    public Double checkFee() {
        return 100d;
    }
}
