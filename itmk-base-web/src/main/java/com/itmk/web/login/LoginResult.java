package com.itmk.web.login;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class LoginResult {
    private Long userId;
    private String username;
    private String token;
    private String userType;
}