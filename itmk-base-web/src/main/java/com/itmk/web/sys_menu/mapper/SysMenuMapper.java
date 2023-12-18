package com.itmk.web.sys_menu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itmk.web.sys_menu.entity.SysMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author java实战基地
 * @Version 2383404558
 */
public interface SysMenuMapper extends BaseMapper<SysMenu> {
    //根据员工id查询菜单
    List<SysMenu> getMenuByUserId(@Param("userId") Long userId);
    //根据会员id查询菜单
    List<SysMenu> getMenuByMemberId(@Param("userId") Long userId);
    //根据角色id查询菜单
    List<SysMenu> getMenuByRoleId(@Param("roleId") Long roleId);
}
