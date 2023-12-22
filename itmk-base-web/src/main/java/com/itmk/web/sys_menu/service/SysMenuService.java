package com.itmk.web.sys_menu.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.itmk.web.sys_menu.entity.SysMenu;
import java.util.List;

/**
 * @Author lpm
 *  
 */
public interface SysMenuService extends IService<SysMenu> {
    List<SysMenu> getParent();
    //根据员工id查询菜单
    List<SysMenu> getMenuByUserId(Long userId);
    //根据会员id查询菜单
    List<SysMenu> getMenuByMemberId(Long userId);
    //根据角色id查询菜单
    List<SysMenu> getMenuByRoleId(Long roleId);
}
