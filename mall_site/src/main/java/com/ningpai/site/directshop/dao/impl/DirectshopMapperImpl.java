package com.ningpai.site.directshop.dao.impl;

import com.ningpai.manager.base.BasicSqlSupport;
import com.ningpai.site.directshop.bean.DirectShop;
import com.ningpai.site.directshop.dao.DirectshopMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

/**
 * 移动端直营店DAO接口实现类
 * @author qiyuanyuan
 *
 */
@Repository("SiteDirectshopMapper")
public class DirectshopMapperImpl extends BasicSqlSupport implements DirectshopMapper {

    /*
     * 根据条件查询店铺详情
     * @see com.ningpai.directshop.dao.DirectshopMapper#selectInfoById(java.util.Map)
     */
    @Override
    public DirectShop selectInfoById(Map<String, Object> paramMap) {
        return this.selectOne("com.ningpai.m.site.mapper.DirectShopMapper.selectInfoDetailById", paramMap);
    }

    /*
     * 根据条件查询店铺列表
     * @see com.ningpai.directshop.dao.DirectshopMapper#directShops(java.util.Map)
     */
    @Override
    public List<DirectShop> directShops(Map<String, Object> paramMap) {
        return this.selectList("com.ningpai.m.site.mapper.DirectShopMapper.selectdirectlistByCountyId", paramMap);
    }

}
