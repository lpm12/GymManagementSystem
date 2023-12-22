package com.itmk.web.member_card.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itmk.web.member_card.entity.MemberCard;
import com.itmk.web.member_card.mapper.MemberCardMapper;
import com.itmk.web.member_card.service.MemberCardService;
import org.springframework.stereotype.Service;

/**
 * @Author lpm
 *  
 */
@Service
public class MemberCardServiceImpl extends ServiceImpl<MemberCardMapper, MemberCard> implements MemberCardService {
}
