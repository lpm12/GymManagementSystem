package com.itmk.web.member_recharge.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.itmk.web.member.entity.RechargeParmList;
import com.itmk.web.member_recharge.entity.MemberRecharge;


/**
 * @Author lpm
 *  
 */
public interface MemberRechargeService extends IService<MemberRecharge> {
    IPage<MemberRecharge> getRecherList(RechargeParmList parmList);
    IPage<MemberRecharge> getRecherByMember(RechargeParmList parmList);
}
