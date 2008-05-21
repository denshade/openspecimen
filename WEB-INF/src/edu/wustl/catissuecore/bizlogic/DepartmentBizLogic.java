/**
 * Copyright:    Copyright (c) year
 * Company: Washington University, School of Medicine, St. Louis.
 * @author Ashish Gupta
 * @version 1.00
 * Created on Sep 19, 2006
 */

package edu.wustl.catissuecore.bizlogic;

import java.util.List;

import edu.wustl.catissuecore.domain.Department;
import edu.wustl.catissuecore.util.global.Constants;
import edu.wustl.common.bizlogic.DefaultBizLogic;
import edu.wustl.common.dao.DAO;
import edu.wustl.common.util.dbManager.DAOException;
import edu.wustl.common.util.global.ApplicationProperties;
import edu.wustl.common.util.global.Validator;

public class DepartmentBizLogic extends DefaultBizLogic
{

	protected boolean validate(Object obj, DAO dao, String operation) throws DAOException
	{		
		//comment by Ashwin
		Department department = (Department) obj;
		if (department == null)
		{
			 String message = ApplicationProperties.getValue("app.department");
			 throw new DAOException(ApplicationProperties.getValue("domain.object.null.err.msg",message));   			
			//throw new DAOException("domain.object.null.err.msg", new String[]{"Institution"});
		}
		
		Validator validate = new Validator();
		if (validate.isEmpty(department.getName()))
		{
			String message = ApplicationProperties.getValue("department.name");
			throw new DAOException(ApplicationProperties.getValue("errors.item.required",message));   			
			//throw new DAOException("errors.item.required", new String[]{message});
		}
		return true;
	}
	
	/**
	 * @author Baljeet Singh
	 * This method returns the Id of the latest department corresponding to the name
	 * @param departmentName
	 * @return
	 * @throws DAOException
	 */
	public String getLatestDepartment(String departmentName)throws DAOException
	{
		String sourceObjectName = Department.class.getName();
    	String[] selectColumnName = {Constants.SYSTEM_IDENTIFIER};
    	String[] whereColumnName = {Constants.NAME};
    	String[] whereColumnCondition = {Constants.EQUALS}; 
    	String[] whereColumnValue = {departmentName};
		
    	List departmentList = retrieve(sourceObjectName, selectColumnName, whereColumnName, whereColumnCondition, whereColumnValue, null);
    	Long departmentId = null;
    	if((departmentList != null) && (departmentList.size()>0))
    	{
    		departmentId =(Long)departmentList.get(0);
    	}
    	return departmentId.toString();
	}
 }
