package com.fpt.model;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "payment_details")
public class PaymentDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "payment_detail_id")
    private String paymentDetailId;

    private int amount;

    private String paymentMethod;

    private String provider;

    private LocalDateTime create_at;

    // mayBy la ten flied trong code
    @OneToOne(mappedBy = "paymentDetails", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private Orders orders;
}
