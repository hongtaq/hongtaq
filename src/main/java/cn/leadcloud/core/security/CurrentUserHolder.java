package cn.leadcloud.core.security;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

/**
 * @author sunphy
 * created on 2011-3-18 上午10:59:41
 */
public class CurrentUserHolder {

	/**
	 * 获取当前登录用户, 尚未登录返回null
	 * @return user
	 * @author sunphy 
	 */
	public static String getCurrentUsername() {
		UserDetails userDetails = getCurrentUserDetails();
		if(userDetails == null)
			return null;
		return userDetails.getUsername();
	}
	
	/**
	 * 获取一个当前用户的userDetails
	 * */
	public static UserDetails getCurrentUserDetails() {
		Authentication authentication = SecurityContextHolder.getContext()
				.getAuthentication();
		if (authentication == null)
			return null;
		//System.out.println(authentication.getPrincipal());
		if(authentication.getPrincipal() instanceof UserDetails)
			return (UserDetails) authentication.getPrincipal();
		return null;
	}
}
