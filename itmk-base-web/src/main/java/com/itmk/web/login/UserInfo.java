package com.itmk.web.login;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class UserInfo {
    private Long userId;
    private String name;
    private Object[] permissons;
}
