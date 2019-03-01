package easySec.oauth2.server.service.oauth2;

import easySec.oauth2.server.model.oauth2.Oauth2Token;

public abstract interface Oauth2TokenService {
	Oauth2Token selectByAccessToken(String accessToken);
	Oauth2Token selectByRefreshToken(String refreshToken);
	Oauth2Token selectByUsernameClientId(String username, String clientId);
	boolean checkExpireIn(Long expireIn);
	void save(Oauth2Token token);
	void deleteById(Integer id);
}