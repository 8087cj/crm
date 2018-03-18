package com.zking.crm.mapper;

import com.zking.crm.model.CstLost;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CstLostMapper {
    int deleteByPrimaryKey(Long lstId);

    int insert(CstLost record);

    int insertSelective(CstLost record);

    CstLost selectByPrimaryKey(Long lstId);

    int updateByPrimaryKeySelective(CstLost record);

    int updateByPrimaryKey(CstLost record);

    List<CstLost> listCstLostTrue(CstLost record);

    List<CstLost> listCstLost(CstLost record);

    //暂缓措施
    int delay(CstLost record);

    //确认流失
    int confirm(CstLost record);

}