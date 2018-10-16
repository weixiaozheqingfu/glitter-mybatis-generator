package ${package}.persistence.dao.mysql;
<#assign upClassName=className?cap_first>
import ${package}.bean.${className?cap_first};
import java.util.List;

public interface I${upClassName}Dao{

    /**
     * 按主键查询
     *
     * @param id
     * @return
     */
    ${upClassName} get${upClassName}ById(Long id);

    /**
     * 按主键集合查询
     *
     * @param ids
     * @return
     */
    List<${upClassName}> get${upClassName}ByIds(Long[] ids);

    /**
     * 按条件查询
     *
     * @param ${className}
     * @return
     */
    ${upClassName} get${upClassName}(${upClassName} ${className});

    /**
     * 查询所有记录
     *
     * @return
     */
    List<${upClassName}> findAllList();

    /**
     * 按条件查询
     *
     * @param ${className}
     * @return
     */
    List<${upClassName}> findList(${upClassName} ${className});

    /**
     * 按条件获取数量
     *
     * @param ${className}
     * @return
     */
    int getCount(${upClassName} ${className});

    /**
     * 插入操作
     *
     * @param ${className}
     * @return
     */
    int insert(${upClassName} ${className});

    /**
     * 根据主键更新
     *
     * @param ${className}
     * @return
     */
    int updateById(${upClassName} ${className});

    /**
     * 根据主键删除
     *
     * @param id
     * @return
     */
    int deleteById(Long id);

    /**
     * 根据主键集合删除
     *
     * @param ids
     * @return
     */
    int deleteByIds(Long[] ids);

    /**
     * 根据条件删除
     *
     * @param ${className}
     * @return
     */
    int delete(${upClassName} ${className});

}