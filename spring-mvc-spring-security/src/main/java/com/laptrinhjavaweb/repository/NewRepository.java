package com.laptrinhjavaweb.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.laptrinhjavaweb.entity.NewEntity;

public interface NewRepository extends JpaRepository<NewEntity, Long> {
	
	@Query(value="SELECT * FROM new ORDER BY modifieddate DESC LIMIT 0,1", nativeQuery = true)
	List<NewEntity> find1Latest();
	
	@Query(value="SELECT * FROM new WHERE category_id ='1' ORDER BY modifieddate DESC LIMIT 0,3", nativeQuery = true)
	List<NewEntity> find3LatestTheThao();
	
	@Query(value="SELECT * FROM new WHERE category_id ='3' ORDER BY modifieddate DESC LIMIT 0,3", nativeQuery = true)
	List<NewEntity> find3LatestThoiSu();
	
	@Query(value="SELECT * FROM new WHERE category_id ='2' ORDER BY modifieddate DESC LIMIT 0,3", nativeQuery = true)
	List<NewEntity> find3LatestChinhTri();
	
	@Query(value="SELECT * FROM new WHERE category_id =:categoryid", nativeQuery = true)
	List<NewEntity> findAllByCategoryId(@Param("categoryid") Long categoryid);
}
