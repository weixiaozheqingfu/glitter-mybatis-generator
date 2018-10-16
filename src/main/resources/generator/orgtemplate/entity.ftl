package ${package}.bean;
import lombok.Data;
import com.syswin.systoon.framework.bean.BaseBean;
<#assign upClassName=className?cap_first> 
@Data
public class ${upClassName} extends BaseBean {

<#list columns as column>
    /** ${column.columnComment} */
    private ${column.dataType} ${column.columnName};
</#list> 
 
}