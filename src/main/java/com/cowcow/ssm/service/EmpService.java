package com.cowcow.ssm.service;

import com.cowcow.ssm.entity.Emp;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface EmpService {
    List<Emp> getAll();

    PageInfo<Emp> getPageInfo(Integer pageNo);

    void removeEmpById(Integer empId);

    void saveEmp(Emp emp);

    Emp getEmpById(Integer empId);

    void updateEmp(Emp emp);
}
