package com.itmk.web.sys_user.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class PageParm {
    private Long currentPage;
    private Long pageSize;
    private String phone;
    private String nickName;
}