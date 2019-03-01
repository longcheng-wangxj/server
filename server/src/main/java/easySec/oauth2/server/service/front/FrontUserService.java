package easySec.oauth2.server.service.front;

import easySec.oauth2.server.model.front.FrontUser;

public interface FrontUserService {
	FrontUser selectById(Integer id);
	FrontUser selectByUsername(String username);
	void save(FrontUser user);
	void deleteById(Integer id);
}