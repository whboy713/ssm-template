package com.cowcow.ssm;

import com.cowcow.ssm.entity.Emp;
import com.cowcow.ssm.mapper.EmpMapper;
import com.cowcow.ssm.service.EmpService;
import org.junit.jupiter.api.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit.jupiter.SpringJUnitConfig;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@SpringJUnitConfig(locations = {"classpath:spring-persist.xml"})
public class SpringTest {
    @Autowired
    private DataSource dataSource;

    Logger logger = LoggerFactory.getLogger(getClass());

    @Test
    public void testConn() throws SQLException {
        Connection connection = dataSource.getConnection();
        logger.debug(connection.toString());
    }

    @Autowired
    private EmpMapper empMapper;
    @Test
    public void testmybaties() throws SQLException {
        List<Emp> empList = empMapper.selectAll();
        for (Emp emp : empList) {
            System.out.println(emp);
        }
    }

    @Autowired
    private EmpService empService;

    @Test
    public void testTx() {
        List<Emp> empList = empService.getAll();
        for (Emp emp : empList) {
            System.out.println("emp = " + emp);
        }
    }
}
