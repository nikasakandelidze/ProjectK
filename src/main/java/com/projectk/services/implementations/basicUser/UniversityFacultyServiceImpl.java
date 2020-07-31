package com.projectk.services.implementations.basicUser;

import com.projectk.entities.searchEntities.SearchFaculty;
import com.projectk.entities.searchEntities.SearchUniversity;
import com.projectk.entities.ServiceResult;
import com.projectk.services.interfaces.FacultyService;
import com.projectk.services.interfaces.UniversityFacultyService;
import com.projectk.services.interfaces.loggedInUserServices.UniversityService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UniversityFacultyServiceImpl implements UniversityFacultyService {
    private UniversityService universityService;
    private FacultyService facultyService;

    @Autowired
    public UniversityFacultyServiceImpl(UniversityService universityService, FacultyService facultyService) {
        this.universityService = universityService;
        this.facultyService = facultyService;
    }

    @Override
    public ServiceResult getUniversity(int universityId) {
        ServiceResult universityServiceResult = universityService.filterUniversities(new SearchUniversity.Builder()
                .universityId(universityId)
                .build());
        ServiceResult facultyServiceResult = facultyService.filterFaculties(new SearchFaculty.Builder()
                .universityId(universityId)
                .build());
        universityServiceResult.getModelMap().putAll(facultyServiceResult.getModelMap());
        return universityServiceResult;
    }
}