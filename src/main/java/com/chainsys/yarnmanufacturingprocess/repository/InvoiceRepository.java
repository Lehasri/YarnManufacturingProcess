package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Invoice;

public interface InvoiceRepository extends CrudRepository<Invoice,Integer>  {
	Invoice findById(int id);
	Invoice save(Invoice invoice);
	void deleteById(int invoiceId);
	List <Invoice> findAll();
	Invoice findByOrderId(int id);
}