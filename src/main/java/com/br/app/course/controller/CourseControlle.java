package com.br.app.course.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping(path = "/")
public class CourseControlle {

    @CrossOrigin
    @GetMapping(path = "/name")
    @ResponseStatus(HttpStatus.OK)
    public String proval(){
        return "teste";
    }
}
