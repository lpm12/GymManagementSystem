package com.itmk.web.lost.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itmk.web.lost.entity.Lost;
import com.itmk.web.lost.mapper.LostMapper;
import com.itmk.web.lost.service.LostService;
import org.springframework.stereotype.Service;

/**
 * @Author lpm
 *  
 */
@Service
public class LostServiceImpl extends ServiceImpl<LostMapper, Lost> implements LostService {
}
