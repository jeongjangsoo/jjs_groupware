package kr.smhrd.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.smhrd.entity.AllApproval;
import kr.smhrd.entity.App;
import kr.smhrd.entity.Approval;
import kr.smhrd.entity.Approval_auth;
import kr.smhrd.entity.UpApproval;
import kr.smhrd.entity.ViewApproval;
import kr.smhrd.mapper.ApprovalMapper;

@Service
public class ApprovalService {
	
	@Autowired
	private ApprovalMapper approvalMapper;
	
	// 전체 리스트를 가져오는 메서드
	public List<Approval> getList(){
		List<Approval> list = approvalMapper.getList();
		return list;
	}
	
	// 결재 게시물 조회
	public AllApproval select(int appro_id) {
		AllApproval get = approvalMapper.read(appro_id);
		return get;
	}
	
	// 승인반려 등록
	public void inget(UpApproval app) {
		approvalMapper.inget(app);
		approvalMapper.upget(app);
	}

	// 결재 게시물 등록창
	public ViewApproval view(String member_name) {
		ViewApproval view = approvalMapper.view(member_name);
		return view;
	}
	
	// 결재 등록
	public void inser(Approval_auth app) {
		if(app.getAppro_sort()==0) {
			approvalMapper.appro(app);
			approvalMapper.approv(app);
		}else if(app.getAppro_sort()==1) {
			approvalMapper.appro(app);
			approvalMapper.pay(app);
		}else {
			approvalMapper.appro(app);
			approvalMapper.vacation(app);
		}
	}
	
	public App main(int member_id) {
		App ap = new App();
		ap.setApro_status0(approvalMapper.main0());
		ap.setApro_status1(approvalMapper.main1());
		ap.setApro_status2(approvalMapper.main2());
		ap.setApro_statusmy(approvalMapper.main3(member_id));
		ap.setApro_statusm(approvalMapper.main4(member_id));
		ap.setMyc_count(approvalMapper.main5(member_id));
		return ap;
	}
	
	public List<App> main2() {
		List<App> ap = approvalMapper.main6();
		return ap;
	}
}

