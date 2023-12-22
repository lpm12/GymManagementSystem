package com.itmk.web.material.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itmk.web.material.entity.Material;
import com.itmk.web.material.mapper.MaterialMapper;
import com.itmk.web.material.service.MaterialService;
import org.springframework.stereotype.Service;

/**
 * @Author lpm
 *  
 */
@Service
public class MaterialServiceImpl extends ServiceImpl<MaterialMapper, Material> implements MaterialService {
}
