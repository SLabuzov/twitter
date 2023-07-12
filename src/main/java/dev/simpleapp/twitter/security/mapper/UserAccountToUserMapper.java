package dev.simpleapp.twitter.security.mapper;

import dev.simpleapp.twitter.security.model.UserAccount;
import org.springframework.security.core.userdetails.User;

public interface UserAccountToUserMapper extends Mapper<User, UserAccount>{
}
