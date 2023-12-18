package com.itmk.web.goods.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.itmk.utils.ResultUtils;
import com.itmk.utils.ResultVo;
import com.itmk.web.goods.entity.Goods;
import com.itmk.web.goods.entity.GoodsParm;
import com.itmk.web.goods.service.GoodsService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

/**
 * @Author java实战基地
 * @Version 2383404558
 */
@RestController
@RequestMapping("/api/goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;

    //新增
    @PreAuthorize("hasAuthority('sys:goodsList:add')")
    @PostMapping
    public ResultVo add(@RequestBody Goods goods){
        if(goodsService.save(goods)){
            return ResultUtils.success("新增成功");
        }
        return ResultUtils.error("新增失败!");
    }

    //编辑
    @PreAuthorize("hasAuthority('sys:goodsList:edit')")
    @PutMapping
    public ResultVo edit(@RequestBody Goods goods){
        if(goodsService.updateById(goods)){
            return ResultUtils.success("编辑成功");
        }
        return ResultUtils.error("编辑失败!");
    }

    //删除
    @PreAuthorize("hasAuthority('sys:goodsList:delete')")
    @DeleteMapping("/{goodsId}")
    public ResultVo delete(@PathVariable("goodsId") Long goodsId){
        if(goodsService.removeById(goodsId)){
        return ResultUtils.success("删除成功");
        }
        return ResultUtils.error("删除失败!");
    }

    //列表
    @GetMapping("/list")
    public ResultVo list(GoodsParm parm){
        //构造分页对象
        IPage<Goods> page = new Page<>(parm.getCurrentPage(),parm.getPageSize());
        //构造查询条件
        QueryWrapper<Goods> query = new QueryWrapper<>();
        if(StringUtils.isNotEmpty(parm.getName())){
            query.lambda().like(Goods::getName,parm.getName());
        }
        IPage<Goods> list = goodsService.page(page, query);
        return ResultUtils.success("查询成功",list);
    }

}
