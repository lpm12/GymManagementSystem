package com.itmk.web.goods_order.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itmk.web.goods_order.entity.GoodsOrder;
import com.itmk.web.home.entity.EchartItem;

import java.util.List;

/**
 * @Author lpm
 *
 */
public interface GoodsOrderMapper extends BaseMapper<GoodsOrder> {
    //近期收益
    List<EchartItem> recentIncome();
    //热销商品
    List<EchartItem> hotGoods();
    //热销卡
    List<EchartItem> hotCards();
    //热销课程
    List<EchartItem> hotCourse();
}
