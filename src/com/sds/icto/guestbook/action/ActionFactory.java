package com.sds.icto.guestbook.action;

import com.sds.icto.guestbook.action.AddAction;
import com.sds.icto.guestbook.action.DeleteAction;
import com.sds.icto.mysite.servlet.action.main.IndexAction;
import com.sds.icto.web.Action;

public class ActionFactory {
	private static ActionFactory instance;

	static {
		instance = new ActionFactory();
	}

	private ActionFactory() {
	}

	public static ActionFactory getInstance() {
		// if( instance == null ) {
		// instance = new ActionFactory();
		// }
		return instance;
	}

	public Action getAction(String a) {
		Action action = null;
		
		if ( "guestbookform".equals(a)){
			action = new GuestbookFormAction();
		} else if ("add".equals(a)) {
			action = new AddAction();
		} else if ("delete".equals(a)) {
			action = new DeleteAction();
		}
		
		if (action == null) {
			action = new GuestbookFormAction();
		}	
		
		return action;
	}
}
