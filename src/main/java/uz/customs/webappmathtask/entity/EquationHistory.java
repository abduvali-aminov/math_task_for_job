package uz.customs.webappmathtask.entity;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.vladmihalcea.hibernate.type.json.JsonStringType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.TypeDef;
import org.hibernate.annotations.TypeDefs;

import javax.annotation.Nullable;
import javax.persistence.*;
import javax.print.attribute.standard.DateTimeAtCreation;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity(name = "equation_histories")
@TypeDefs({
        @TypeDef(name = "json", typeClass = JsonStringType.class)
})


public class EquationHistory {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private double a;

    @Column(nullable = false)
    private double b;

    @Column(nullable = false)
    private double c;

    private Double x1;

    private Double x2;

    @Column(nullable = false)
    private int status;

    @CreationTimestamp
    private Date createdAt;
}
