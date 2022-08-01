package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

public class YarnStockRepository {
	YarnStock findById(int id);
	YarnStock save(YarnStock ys);
	void deleteById(int ys_id);
	List <YarnStock> findAll();
}
