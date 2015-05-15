package com.sds.icto.board.action;

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
		
		if ( "listform".equals(a)){
			action = new ListFormAction();
		} else if ("add".equals(a)) {
			action = new AddAction();
		} else if ("delete".equals(a)) {
			action = new DeleteAction();
		}
		
		if (action == null) {
			action = new ListFormAction();
		}	
		
		return action;
	}
}
