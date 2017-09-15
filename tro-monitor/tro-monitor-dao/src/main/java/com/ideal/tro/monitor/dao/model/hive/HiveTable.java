package com.ideal.tro.monitor.dao.model.hive;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.io.Serializable;


@Getter
@Setter
@ToString
@Entity
@Table(name = "hive_table")
public class HiveTable implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String tableName;

    private String state;

    private String description;

}