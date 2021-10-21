package com.br.app.course.controller;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;

@RestController
@RequestMapping(path = "/")
public class CourseControlle {

    @GetMapping(path = "/name")
    @ResponseStatus(HttpStatus.OK)
    public String proval(){

        return "teste Gabriel".toString();
    }
}
