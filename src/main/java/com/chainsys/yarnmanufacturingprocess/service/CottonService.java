package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Cotton;
import com.chainsys.yarnmanufacturingprocess.repository.CottonRepository;
    @Service
	public class CottonService {
		@Autowired
		private CottonRepository cottonRepository;
		
		public Cotton findById(int id) {
			return cottonRepository.findById(id);
		}
		public Cotton save(Cotton cotton) {
			 return cottonRepository.save(cotton);
		}
        public List<Cotton>getAllCottons()		{
		 return cottonRepository.findAll();
		}
		public void deleteById(int id)
		{
			cottonRepository.deleteById(id);
		}
		
	}



