package dao;

import java.util.List;

import entities.TrReports;

/**
 * @author Nana Febriana
 */

public interface TrReportsDao {

	public List<TrReports> getReportList();
	public TrReports getReportsById(int reportsId);
	public TrReports updateReportsObj(TrReports reports);
	public TrReports deleteReports(Integer userId);
	public TrReports insertTrReport(TrReports reports);

}