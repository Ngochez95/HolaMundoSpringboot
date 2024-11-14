package com.microservices.HolaMundo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HolaMundoController {


    @RequestMapping(value = "/hello")
    public String holaMundo(){
        return "Hola Mundo";
    }
}
