package com.linkcode.onetomany;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PlayerDTO {

    @Id
    private int jerseyNo;
    private String name;
    private boolean isCaptain;
    private String role;
}