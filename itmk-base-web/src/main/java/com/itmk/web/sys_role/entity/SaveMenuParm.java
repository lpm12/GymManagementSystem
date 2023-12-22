package com.itmk.web.sys_role.entity;

import lombok.Data;

import java.util.List;

/**
 * @Author lpm
 *  
 */
@Data
public class SaveMenuParm {
    private Long roleId;
    private List<Long> list;
}
