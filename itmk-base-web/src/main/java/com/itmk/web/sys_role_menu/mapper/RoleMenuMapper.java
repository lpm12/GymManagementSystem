package com.itmk.web.sys_role_menu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itmk.web.sys_role_menu.entity.RoleMenu;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @Author java实战基地
 * @Version 2383404558
 */
public interface RoleMenuMapper extends BaseMapper<RoleMenu> {
    //保存
    boolean saveRoleMenu(@Param("roleId") Long roleId,@Param("menuIds") List<Long> menuIds);
}
