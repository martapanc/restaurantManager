package wpb.util;

import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.http.HttpSession;

import wpb.entity.Role.RoleEnum;
import wpb.entity.User;
import wpb.entity.UserSession;
import wpb.enums.Section;

public class AccessManager {

	private HashMap<RoleEnum, HashSet<Section>> permissions = new HashMap<>();

	public AccessManager() {
		
		// initialize permissions
		HashSet<Section> adminSections = new HashSet<Section>();
		adminSections.add(Section.TABLES);
		adminSections.add(Section.SCHEDULER);
		
		HashSet<Section> customerSections = new HashSet<Section>();
		customerSections.add(Section.CUSTOMER);
		customerSections.add(Section.CALENDAR);
		
		HashSet<Section> waiterSections = new HashSet<Section>();
		waiterSections.add(Section.SCHEDULER);
		
		HashSet<Section> dbManagerSections = new HashSet<Section>();
		dbManagerSections.add(Section.TABLES);

		permissions.put(RoleEnum.ADMIN, adminSections);
		permissions.put(RoleEnum.CUSTOMER, customerSections);
		permissions.put(RoleEnum.WAITER, waiterSections);
		permissions.put(RoleEnum.DBMANAGER, dbManagerSections);

	}

	public boolean isAllowed(HttpSession session, Section section) {

		User user = ((UserSession) session.getAttribute("userSession")).getUser();
		RoleEnum roleName = user.getRole().getName();
		return permissions.get(roleName).contains(section);

	}

}
