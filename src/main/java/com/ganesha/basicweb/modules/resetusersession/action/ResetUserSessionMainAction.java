package com.ganesha.basicweb.modules.resetusersession.action;

import com.ganesha.basicweb.modules.login.usersession.SimpleUserSession;
import com.ganesha.basicweb.modules.resetusersession.form.ResetUserSessionForm;
import com.ganesha.basicweb.modules.resetusersession.logic.ResetUserSessionBL;
import com.ganesha.core.UserSession;
import com.ganesha.core.exception.AppException;
import com.ganesha.struts2.FormAction;

public class ResetUserSessionMainAction extends
		FormAction<ResetUserSessionForm, ResetUserSessionBL> {

	private static final long serialVersionUID = 8924100755506310829L;

	public ResetUserSessionMainAction() throws AppException {
		super(ResetUserSessionForm.class, ResetUserSessionBL.class);
	}

	public String executeReset() throws AppException {
		getBL().reset(getForm().getUserId());

		return SUCCESS;
	}

	public String initial() throws AppException {
		getForm().setUserSessions(getBL().getList());
		return SUCCESS;
	}

	public String prepareDetail() throws AppException {
		UserSession userSession = getBL().getDetail(getForm().getUserId());
		getForm().setTobeReset((SimpleUserSession) userSession);
		return SUCCESS;
	}
}
