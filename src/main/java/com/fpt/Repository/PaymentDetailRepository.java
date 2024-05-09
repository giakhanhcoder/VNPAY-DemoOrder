package com.fpt.Repository;

import com.fpt.model.PaymentDetails;
import com.fpt.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PaymentDetailRepository extends JpaRepository<PaymentDetails , String> {
}
