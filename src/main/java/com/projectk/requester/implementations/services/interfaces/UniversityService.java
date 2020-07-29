package com.projectk.requester.implementations.services.interfaces;

import com.projectk.entities.ServiceResult;
import com.projectk.entities.University;
import com.projectk.entities.User;
import com.projectk.entities.searchEntities.SearchUniversity;

public interface UniversityService {
	ServiceResult addUniversity(University university);

	ServiceResult updateUniversity(University university);

	ServiceResult filterUniversities(SearchUniversity searchUniversity);
}
