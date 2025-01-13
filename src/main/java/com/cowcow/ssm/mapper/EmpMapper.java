package com.cowcow.ssm.mapper;

import com.cowcow.ssm.entity.Emp;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmpMapper {
    List<Emp> selectAll();

    void deleteByPrimaryKey(Integer empId);

    void insertEmp(Emp emp);

    Emp selectByPrimaryKey(Integer empId);

    void updateEmpByPrimaryKey(Emp emp);
}
