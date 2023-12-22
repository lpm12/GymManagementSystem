package com.itmk.web.login;

import lombok.Data;

/**
 * @Author lpm
 *  
 */
@Data
public class LoginParm {
    private String username;
    private String password;
    private String code;
    private String userType;
}
