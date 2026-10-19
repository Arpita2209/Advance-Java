package com.linkcode.onetomany;


import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class TeamDTO {

    @Id
    private int teamid;
    private String name;
    private String location;
    private String owner;

    @OneToMany
    private List<PlayerDTO> player;
}