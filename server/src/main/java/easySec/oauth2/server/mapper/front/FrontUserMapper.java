package easySec.oauth2.server.mapper.front;

import java.util.List;

import org.springframework.stereotype.Service;

import easySec.oauth2.server.CustomMapper;
import easySec.oauth2.server.model.front.FrontUser;

@Service
public interface FrontUserMapper extends CustomMapper<FrontUser>{
	List<FrontUser> list(FrontUser user);
	FrontUser selectById(Integer id);
	FrontUser selectByUsername(String clientId);
}