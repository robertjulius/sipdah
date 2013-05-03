package com.ganesha.basicweb.modules.module.action;

import com.ganesha.basicweb.modules.module.ModuleForm;
import com.ganesha.core.exception.AppException;
import com.ganesha.core.exception.UserException;

public class ModuleMaintenanceDeleteAction extends ModuleMaintenanceAction {

	private static final long serialVersionUID = 8114275581397242184L;

	public ModuleMaintenanceDeleteAction() throws AppException {
		super();
	}

	public String executeDelete() throws AppException {
		ModuleForm form = getForm();
		try {
			getBL().delete(form.getSelectedId());

			return SUCCESS;
		} catch (UserException e) {
			addActionError(e.getMessageId());
			return ERROR;
		}
	}
}
