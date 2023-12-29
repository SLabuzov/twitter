package dev.simpleapp.twitter.user.profile.model;

import dev.simpleapp.twitter.user.subscription.model.Subscription;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.util.List;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(schema = "twitter", name = "user_profiles")
public class UserProfile {
    @Id
    private Long id;

    @Column(unique = true, nullable = false)
    private String nickname;

    @Column(nullable = false)
    private String imageLink;

    @OneToMany
    @JoinColumn(name = "followed_id", referencedColumnName = "id")
    private List<Subscription> followers;
}
