
package com.krishagni.catissueplus.core.administrative.events;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import com.krishagni.catissueplus.core.administrative.domain.DistributionProtocol;
import com.krishagni.catissueplus.core.administrative.domain.DpDistributionSite;
import com.krishagni.catissueplus.core.common.ListenAttributeChanges;
import com.krishagni.catissueplus.core.common.events.UserSummary;
import com.krishagni.catissueplus.core.de.events.ExtensionDetail;
import com.krishagni.catissueplus.core.de.events.FormSummary;
import com.krishagni.catissueplus.core.de.events.SavedQuerySummary;

@ListenAttributeChanges
public class DistributionProtocolDetail extends DistributionProtocolSummary {

	private List<UserSummary> coordinators;

	private String instituteName;

	private String irbId;

	private String activityStatus;

	private SavedQuerySummary report;

	private FormSummary orderExtnForm;
	
	private Map<String, List<String>> distributingSites = new HashMap<>();

	private ExtensionDetail extensionDetail;

	public List<UserSummary> getCoordinators() {
		return coordinators;
	}

	public void setCoordinators(List<UserSummary> coordinators) {
		this.coordinators = coordinators;
	}

	public String getInstituteName() {
		return instituteName;
	}

	public void setInstituteName(String instituteName) {
		this.instituteName = instituteName;
	}
	
	public String getIrbId() {
		return irbId;
	}

	public void setIrbId(String irbId) {
		this.irbId = irbId;
	}

	public String getActivityStatus() {
		return activityStatus;
	}

	public void setActivityStatus(String activityStatus) {
		this.activityStatus = activityStatus;
	}

	public SavedQuerySummary getReport() {
		return report;
	}

	public void setReport(SavedQuerySummary report) {
		this.report = report;
	}

	public FormSummary getOrderExtnForm() {
		return orderExtnForm;
	}

	public void setOrderExtnForm(FormSummary orderExtnForm) {
		this.orderExtnForm = orderExtnForm;
	}

	public Map<String, List<String>> getDistributingSites() {
		return distributingSites;
	}

	public void setDistributingSites(Map<String, List<String>> distributingSites) {
		this.distributingSites = distributingSites;
	}

	public void setDistributingSitesMapList(List<Map<String, Object>> input) {
		Map<String, List<String>> distributingSites = new HashMap<>();

		for (Map<String, Object> site : input) {
			String institute = (String)site.get("institute");
			List<String> sites = (List<String>)site.get("site");
			distributingSites.put(institute, sites);
		}

		setDistributingSites(distributingSites);
	}

	public ExtensionDetail getExtensionDetail() {
		return extensionDetail;
	}

	public void setExtensionDetail(ExtensionDetail extensionDetail) {
		this.extensionDetail = extensionDetail;
	}

	public static DistributionProtocolDetail from(DistributionProtocol dp) {
		DistributionProtocolDetail detail = new DistributionProtocolDetail();
		
		copy(dp, detail);
		detail.setInstituteName(dp.getInstitute().getName());
		detail.setIrbId(dp.getIrbId());
		detail.setPrincipalInvestigator(UserSummary.from(dp.getPrincipalInvestigator()));
		detail.setCoordinators(UserSummary.from(dp.getCoordinators()));
		detail.setActivityStatus(dp.getActivityStatus());
		if (dp.getReport() != null) {
			detail.setReport(SavedQuerySummary.fromSavedQuery(dp.getReport()));
		}

		if (dp.getOrderExtnForm() != null) {
			detail.setOrderExtnForm(FormSummary.from(dp.getOrderExtnForm()));
		}
		
		Set<DpDistributionSite> distSites = dp.getDistributingSites();
		detail.setDistributingSites(DpDistributionSite.getInstituteSitesMap(distSites));
		detail.setExtensionDetail(ExtensionDetail.from(dp.getExtension()));

		return detail;
	}

	public static List<DistributionProtocolDetail> from(List<DistributionProtocol> distributionProtocols) {
		List<DistributionProtocolDetail> list = new ArrayList<>();
		
		for (DistributionProtocol dp : distributionProtocols) {
			list.add(from(dp));
		}
		
		return list;
	}
	
}
