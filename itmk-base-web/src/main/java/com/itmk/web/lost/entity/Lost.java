package com.itmk.web.lost.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @Author lpm
 *
 */
@Data
@TableName("lost")
public class Lost {
    @TableId(type = IdType.AUTO)
    private Long lostId;
    private String lostName;
    private String foundTime;
    private String foundAddres;
    private String foundPerson;
    private String foundPhone;
    private String status;
    private String lostPerson;
}
