package com.scopelearn.application.serviceimpl;

import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.scopelearn.application.dao.UserRegisterRepository;
import com.scopelearn.application.entity.RegisterDetails;
import com.scopelearn.application.service.RegistrationService;

@Service
public class RegistrationServiceImpl implements RegistrationService {

	@Autowired
	UserRegisterRepository userRegisterRepository;

	@Override
	public String userRegister(RegisterDetails registerDetails) {

		SecureRandom secureRandomGenerator;
		try {
			secureRandomGenerator = SecureRandom.getInstance("SHA1PRNG", "SUN");
			// Get 128 random bytes
			byte[] randomBytes = new byte[128];
			secureRandomGenerator.nextBytes(randomBytes);

			// Get random integer
			int r = secureRandomGenerator.nextInt();

			// Get random integer in range
			int randInRange = secureRandomGenerator.nextInt(999999);

			String base64encodedString = Base64.getEncoder()
					.encodeToString(registerDetails.getPassword().getBytes("utf-8"));

			registerDetails.setId(Long.parseLong(String.valueOf(randInRange)));
			registerDetails.setPassword(base64encodedString);
			registerDetails.setText(registerDetails.getText());
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (NoSuchProviderException e) {
			e.printStackTrace();
		}

		RegisterDetails regDetails = userRegisterRepository.save(registerDetails);
		if (regDetails == null) {

			return "failed";
		}
		return "success";
	}

}
