package com.ibm.customer.acctuator;

import org.springframework.boot.actuate.health.Health;
import org.springframework.boot.actuate.health.HealthIndicator;
import org.springframework.stereotype.Component;

@Component
public class HealthCheck implements HealthIndicator {
    @Override
    public Health health() {
        return new Health.Builder()
            .up()
            .withDetail("MyStatus : ", "is Up and Running")
            .build();
    }
}