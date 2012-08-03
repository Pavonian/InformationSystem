package org.obeonetwork.sample.user;

// Start of user code for import

import org.obeonetwork.fwk.service.exception.ServiceException;
import org.obeonetwork.sample.users.Admin;
import org.obeonetwork.sample.users.Moderator;
import org.obeonetwork.sample.users.User;

// End of user code for import

import org.obeonetwork.sample.users.User;
import org.obeonetwork.sample.users.Admin;
import org.obeonetwork.sample.users.Moderator;


public interface IUserService {
	public void createUser(User user) throws ServiceException;
	public void saveUser(User user) throws ServiceException;
	public User login(String login,String password) throws ServiceException;
	public User getUser(String id) throws ServiceException;
	public Admin getAdmin(String id) throws ServiceException;
	public Moderator getModerator(String id) throws ServiceException;
}