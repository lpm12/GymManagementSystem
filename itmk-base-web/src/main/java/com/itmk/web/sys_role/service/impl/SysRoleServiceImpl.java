package com.itmk.web.sys_role.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itmk.web.sys_menu.entity.MakeMenuTree;
import com.itmk.web.sys_menu.entity.SysMenu;
import com.itmk.web.sys_menu.service.SysMenuService;
import com.itmk.web.sys_role.entity.RoleAssignParm;
import com.itmk.web.sys_role.entity.RoleParm;
import com.itmk.web.sys_role.entity.RolePermissionVo;
import com.itmk.web.sys_role.entity.SysRole;
import com.itmk.web.sys_role.mapper.SysRoleMapper;
import com.itmk.web.sys_role.service.SysRoleService;
import com.itmk.web.sys_user.entity.SysUser;
import com.itmk.web.sys_user.service.SysUserService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * @Author lpm
 *  
 */
@Service
public class SysRoleServiceImpl extends ServiceImpl<SysRoleMapper, SysRole> implements SysRoleService {
    @Autowired
    private SysUserService sysUserService;
    @Autowired
    private SysMenuService sysMenuService;
    @Override
    public IPage<SysRole> getList(RoleParm parm) {
        //构造分页对象
        IPage<SysRole> page = new Page<>(parm.getCurrentPage(),parm.getPageSize());
        //构造查询条件
        QueryWrapper<SysRole> query = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(parm.getRoleName())){
            query.lambda().like(SysRole::getRoleName,parm.getRoleName());
        }
        return this.baseMapper.selectPage(page,query);
    }

    @Override
    public RolePermissionVo getMenuTree(RoleAssignParm parm) {
        //查询用户信息
        SysUser user = sysUserService.getById(parm.getUserId());
        List<SysMenu> list = null;
        //如果是超级管理员，直接查询所有的菜单
        if(StringUtils.isNotEmpty(user.getIsAdmin()) && user.getIsAdmin().equals("1")){
            list = sysMenuService.list();
        }else{
            list = sysMenuService.getMenuByUserId(user.getUserId());
        }
        //组装树形数据
        List<SysMenu> menuList = MakeMenuTree.makeTree(list, 0L);
        //查询角色原来的数据
        List<SysMenu> roleList = sysMenuService.getMenuByRoleId(parm.getRoleId());
        List<Long> ids = new ArrayList<>();
        Optional.ofNullable(roleList).orElse(new ArrayList<>())
                .stream()
                .filter(item -> item != null)
                .forEach(item -> {
                    ids.add(item.getMenuId());
                });
        //组装数据
        RolePermissionVo vo = new RolePermissionVo();
        vo.setListmenu(menuList);
        vo.setCheckList(ids.toArray());
        return vo;
    }
}
