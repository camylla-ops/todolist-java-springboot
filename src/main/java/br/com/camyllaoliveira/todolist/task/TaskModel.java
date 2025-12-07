package br.com.camyllaoliveira.todolist.task;

import java.time.LocalDateTime;
import java.util.UUID;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Data
@Entity(name = "tb_tasks")
public class TaskModel {

    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    private UUID id;

    @Column(length = 50, nullable = false)
    private String title;

    @Column(columnDefinition = "TEXT")
    private String description;

    private LocalDateTime startAt;
    private LocalDateTime endAt;

    private String priority;

    @Column(name = "id_user", nullable = false)
    private UUID idUser;

    @CreationTimestamp
    private LocalDateTime createdAt;

   public void setTitle(String title) {
        if (title.length() > 50) {
            throw new IllegalArgumentException("O título não pode ter mais de 50 caracteres.");
        }
    
     this.title = title;
   }
}
