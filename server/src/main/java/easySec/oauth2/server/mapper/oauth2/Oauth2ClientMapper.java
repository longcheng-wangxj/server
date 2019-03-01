package easySec.oauth2.server.mapper.oauth2;

import java.util.List;

import org.springframework.stereotype.Service;

import easySec.oauth2.server.CustomMapper;
import easySec.oauth2.server.model.oauth2.Oauth2Client;

@Service
public interface Oauth2ClientMapper extends CustomMapper<Oauth2Client>{
	List<Oauth2Client> list(Oauth2Client client);
	Oauth2Client selectById(Integer id);
	Oauth2Client selectByClientId(String clientId);
}