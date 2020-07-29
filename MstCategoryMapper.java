package jp.co.internous.ocean.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import jp.co.internous.ocean.model.domain.MstCategory;

@Mapper
public interface MstCategoryMapper {
	@Select("select * from mst_category")
	List<MstCategory> findAll();
}