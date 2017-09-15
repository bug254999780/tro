package com.ideal.tro.monitor.dao.model.hive;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

@Getter
@Setter
@ToString
@Entity
@Table(name = "hive_table_log")
public class HiveTableLog implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;

    private Timestamp createDate;

    private Timestamp updateDate;

    private String description;

    private String jobTime;

    private String jobName;

    private static final long serialVersionUID = 1L;

}