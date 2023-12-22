package com.itmk.web.sys_role.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class RoleParm {
    private Long currentPage;
    private Long pageSize;
    private String roleName;
}
