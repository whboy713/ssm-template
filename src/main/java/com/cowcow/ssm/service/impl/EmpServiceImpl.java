package com.cowcow.ssm.service.impl;

import com.cowcow.ssm.entity.Emp;
import com.cowcow.ssm.mapper.EmpMapper;
import com.cowcow.ssm.service.EmpService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


@Service
public class EmpServiceImpl implements EmpService {

    @Autowired
    private EmpMapper empMapper;

    @Override
    @Transactional(readOnly = true)
    public List<Emp> getAll() {
        return empMapper.selectAll();
    }

    @Override
    @Transactional(readOnly = true)
    public PageInfo<Emp> getPageInfo(Integer pageNo) {

        // 1、确定每页显示数据的条数
        int pageSize = 5;
        // 2、设定分页数据：开启分页功能。开启后，后面执行的 SELECT 语句会自动被附加 LIMIT 子句，
        // 而且会自动查询总记录数
        PageHelper.startPage(pageNo, pageSize);
        // 3、正常执行查询
        List<Emp> empList = empMapper.selectAll();

        // 4、封装为 PageInfo 对象返回
        return new PageInfo<>(empList);
    }

    @Transactional(
            readOnly = false,
            propagation = Propagation.REQUIRES_NEW,
            rollbackFor = Exception.class)
    @Override
    public void removeEmpById(Integer empId) {

        empMapper.deleteByPrimaryKey(empId);

    }

    @Transactional(
            readOnly = false,
            propagation = Propagation.REQUIRES_NEW,
            rollbackFor = Exception.class)
    @Override
    public void saveEmp(Emp emp) {
        empMapper.insertEmp(emp);
    }

    @Override
    @Transactional(readOnly = true)
    public Emp getEmpById(Integer empId) {

        return empMapper.selectByPrimaryKey(empId);
    }

    @Override
    @Transactional(
            readOnly = false,
            propagation = Propagation.REQUIRES_NEW,
            rollbackFor = Exception.class)
    public void updateEmp(Emp emp) {
        empMapper.updateEmpByPrimaryKey(emp);
    }
}
