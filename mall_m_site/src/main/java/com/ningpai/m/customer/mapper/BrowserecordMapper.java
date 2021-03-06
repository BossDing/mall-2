/*
 * Copyright 2013 NINGPAI, Inc.All rights reserved.
 * NINGPAI PROPRIETARY / CONFIDENTIAL.USE is subject to licence terms.
 */
package com.ningpai.m.customer.mapper;


import com.ningpai.m.customer.vo.Browserecord;

import java.util.List;
import java.util.Map;

/**
 * 浏览记录Mapper
 * 
 * @author NINGPAI-zhangqiang
 * @since 2014年4月12日 下午4:33:55
 * @version 0.0.1
 */
public interface BrowserecordMapper {

    /**
     * 根据主键删除
     * 
     * @param map
     *            浏览编号
     * @return 0失败 1成功
     */
    int deleteByPrimaryKey(Map<String, Object> map);

    /**
     * 根据用户ID删除
     *
     * @param customerId
     *            浏览编号
     * @return 0失败 1成功
     */
    int deleteByCustomerId(Long customerId);

    /**
     * 插入数据
     * 
     * @param record
     * @return 0失败 1成功
     */
    int insert(Browserecord record);

    /**
     * 按条件插入数据
     * 
     * @param record
     * @return 0失败 1成功
     */
    int insertSelective(Browserecord record);

    /**
     * 按照主键编号查找
     * 
     * @param likeId
     *            浏览编号
     */
    Browserecord selectByPrimaryKey(Long likeId);

    /**
     * 按条件修改信息
     * 
     * @param record
     * @return 0失败 1成功
     */
    int updateByPrimaryKeySelective(Browserecord record);

    /**
     * 根据主键编号修改信息
     * 
     * @param record
     * @return 0失败 1成功
     */
    int updateByPrimaryKey(Browserecord record);

    /**
     * 查询浏览记录
     * 
     * @param customerId
     *            会员编号
     * @return List<Browserecord> {@link java.util.List}
     */
    List<Browserecord> selectBrowserecord(Long customerId);
    /**
     * 查询浏览记录条数 上限50
     *
     * @param customerId
     *            会员编号
     * @return List<Browserecord> {@link java.util.List}
     */
    int selectBrowserecordCount(Long customerId);

}
