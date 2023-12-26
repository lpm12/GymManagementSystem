package com.itmk.web.goods_order.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.itmk.web.goods_order.entity.GoodsOrder;
import com.itmk.web.goods_order.entity.OrderParm;
import com.itmk.web.home.entity.EchartItem;

import java.util.List;

/**
 * @Author lpm
 *  
 */
public interface GoodsOrderService extends IService<GoodsOrder> {
    //近期收益
    List<EchartItem> recentIncome();
    //热销商品
    List<EchartItem> hotGoods();
    //热销卡
    List<EchartItem> hotCards();
    //热销课程
    List<EchartItem> hotCourse();
    //下单
    void downOrder(OrderParm parm);
}
