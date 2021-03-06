package com.ningpai.system.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.ningpai.system.bean.ExpressConf;

/**
 * 配送方式设置数据操作接口
 * 
 * @Description:
 * @author NINGPAI_xiaomm
 * @since 2014-03-26 16:38:32
 * @version V1.0
 */
@Repository
public interface IExpressConfDao {

    /**
     * 保存配送方式设置
     * 
     * @param expressConf
     *            配送方式设置对象
     * @return 是否保存成功
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    boolean saveExpressConf(ExpressConf expressConf);

    /**
     * 修改配送方式设置
     * 
     * @param expressConf
     *            待修改配送方式设置对象
     * @return 更新影响的条数
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    int updateExpressConf(ExpressConf expressConf);

    /**
     * 根据配送方式设置对象的id查询配送方式设置对象
     * 
     * @param id
     *            配送方式设置id
     * @return 配送方式设置对象
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    ExpressConf getExpressConfById(int id);

    /**
     * 根据配送方式设置对象的id字符集合查询配送方式设置对象
     * 
     * @param ids
     *            配送方式设置id字符集合(如果多个使用,分割)
     * @return 配送方式设置对象集合
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    List<ExpressConf> getExpressConfByIds(String ids);

    /**
     * 根据配送方式设置对象的id字符集合删除配送方式设置对象
     * 
     * @param ids
     *            配送方式设置id字符集合(如果多个使用,分割)
     * @return 删除配送方式设置对象的数目
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    int deleteExpressConf(String ids);

    /**
     * 更新配送方式设置对象的单个字段 其中要包含ids键，保存更新对象的id（多个id以，号分割）
     * 
     * @param parameter
     *            更新的参数Map(key: 字段名 value: 字段值)
     * @return 更新配送方式设置对象的数目
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    int updateExpressConfFieldById(Map<String, Object> parameter);

    /**
     * 根据配送方式设置对象的单个字段查询配送方式设置对象信息总数 其中要包含ids键，保存更新对象的id（多个id以，号分割）
     * 如果查询中有时间条件，则字段名格式为：开始时间（字段名Start），结束时间（字段名End）
     * 如果需要分页查询，开始为：startRowNum，结束为：endRowNum
     * 
     * @param parameter
     *            更新的参数Map(key: 字段名 value: 字段值)
     * @return 配送方式设置对象信息总数
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    int getExpressConfByFieldTotal(Map<String, Object> parameter);

    /**
     * 根据配送方式设置对象的单个字段查询配送方式设置对象信息 其中要包含ids键，保存更新对象的id（多个id以，号分割）
     * 如果查询中有时间条件，则字段名格式为：开始时间（字段名Start），结束时间（字段名End）
     * 如果需要分页查询，开始为：startRowNum，结束为：endRowNum
     * 
     * @param parameter
     *            更新的参数Map(key: 字段名 value: 字段值)
     * @return 配送方式设置对象的集合
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    List<ExpressConf> getExpressConfByField(Map<String, Object> parameter);

    /**
     * 得到启用的上门自提信息
     *
     * @return
     */
    ExpressConf getExpressConfByUsedField();

    /**
     * 查询配送方式设置对象信息总数 如果需要分页查询，开始为：startRowNum，结束为：endRowNum
     * 
     * @param parameter
     *            更新的参数Map(key: 字段名 value: 字段值)
     * @return 配送方式设置对象信息总数
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    int queryExpressConfTotal(Map<String, Object> parameter);

    /**
     * 分页查询配送方式设置对象信息 如果需要分页查询，开始为：startRowNum，结束为：endRowNum
     * 
     * @param parameter
     *            更新的参数Map(key: 字段名 value: 字段值)
     * @return 配送方式设置对象的集合
     * @author NINGPAI_xiaomm
     * @since 2014-03-26 16:38:32
     */
    List<ExpressConf> queryExpressConfByPage(Map<String, Object> parameter);

    /**
     * 根据配送方式查询物流公司快递100代码
     * 
     * @param expressid
     * @return
     */
    String queryKuaidi100CodeByExpressId(Long expressid);

    /**
     * 根据物流公司ID查询配送方式<br/>
     * 用于物流公司禁用时，禁用相应配送方式
     * 
     * @param map
     * @return
     */
    int updateExpressUserdStatusByLogisticsId(Map<String, Object> map);

    /**
     * 根据物流公司ID查询配送方式的数量<br/>
     * 用于删除、修改物流公司时，进行验证
     * 
     * @param logisticsId
     * @return
     */
    int queryExpressCountByLogistics(Long logisticsId);
}
