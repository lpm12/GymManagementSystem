package com.itmk.web.home.entity;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class ResetPassword {
    private Long userId;
    private String userType;
    private String password;
    private String oldPassword;
}
