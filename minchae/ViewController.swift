import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let titleLable: UILabel = {
        let label = UILabel()
        label.textColor = .blue //텍스트 색상을 파란색으로 설정해준다.
        label.text = "Solvit" // 텍스트를 "solvit"으로 적어준다.
        label.font = .boldSystemFont(ofSize: 40) //볼트 시스템 폰트로 설정하고 크기는 40 포인트로 지정해준다.
        return label
    }()
    
    let mathButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue //버튼의 색깔을 파랑으로 설정
        button.setTitle("Math", for: .normal) //button에 setTitle을 통해 "Math"를 적어준다.
        //'for.normal'은 버튼의 기본 상태에서 재목과 재목 색상을 설정한다.
        button.layer.cornerRadius = 8 //버튼의 둥글기를 8로 설정해준다.
        button.addTarget(self, action: #selector(mathButtonTapped), for: .touchUpInside)
        //addTarget을 통해 버튼이 눌렸을 때 화면이 이동하는 이벤트를 발생시킨다.
        return button
    }()
    
    @objc func mathButtonTapped() {
        self.navigationController?.pushViewController(MathViewController(), animated: true)
    }
    //navigationController를 이용하여 MathViewController 화면으로 이동한다.
    
    let historyButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("History", for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(historyButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func historyButtonTapped(){
        self.navigationController?.pushViewController(HistoryViewController(), animated: true)
    }
    //navigationController를 이용하여 HistoryViewController 화면으로 이동

    let scienceButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("Science", for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(scienceButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func scienceButtonTapped() {
        self.navigationController?.pushViewController(ScienceViewController(), animated: true)
    }
    //navigationController를 이용하여 ScienceViewController 화면으로 이동
    
    let englishButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("English", for: .normal)
        button.layer.cornerRadius = 8
        button.addTarget(self, action: #selector(englishButtonTapped), for: .touchUpInside)
        return button
    }()
    
    @objc func englishButtonTapped() {
        self.navigationController?.pushViewController(EnglishViewController(), animated: true)
    }
    //navigationController를 이용하여 EnglishViewController 화면으로 이동
    
    let explainLable: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "여러 상식문제를 풀어보고,\n자신의 상식 수준을 알아보세요"
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = . systemFont(ofSize: 20)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.hidesBackButton = true //뒤로가기 버튼 숨기기
        view.backgroundColor = .white
        
        view.addSubview(titleLable) //현재 view에 titleLable 서브 뷰를 추가한다.
        view.addSubview(mathButton)
        view.addSubview(historyButton)
        view.addSubview(scienceButton)
        view.addSubview(englishButton)
        view.addSubview(explainLable)
        
        titleLable.snp.makeConstraints { make in //makeConstraints를 통해 titleLabel의 제약조건을 설정해준다.
            //titleLable이 너무 기니까 가독성을 위해 make로 대체해준다.
            make.top.equalToSuperview().inset(70) //titleLable의 상단이 현재 뷰의 상단에서 70포인트 만큼 떨어지도록 설정한다.
            make.left.equalToSuperview().inset(25) //titleLable의 왼쪽이 현재 뷰의 왼쪽에서 25포인트 만큼 떨어지도록 설정한다.
        }
        
        mathButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(170) //mathButton의 상단이 현재 뷰의 상단에서 170포인트 만큼 떨어지도록 설정한다.
            make.left.equalToSuperview().inset(25) //mathButton의 상단이 현재 뷰의 상단에서 25포인트 만큼 떨어지도록 설정한다.
            make.height.equalTo(150) //버튼의 높이를 150으로 설정해준다.
            make.width.equalTo(150) //버튼의 너비를 150으로 설정해준다.
        }
        
        historyButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(170)
            make.right.equalToSuperview().inset(25)
            make.height.equalTo(150)
            make.width.equalTo(150)
        }
        
        scienceButton.snp.makeConstraints { make in
            make.top.equalTo(mathButton.snp.bottom).offset(60) //scienceButton의 상단이 mathButton을 기준으로 60포인트 만큼 떨어지도록 설정한다.
            make.left.equalToSuperview().inset(25)
            make.height.equalTo(150)
            make.width.equalTo(150)
        }
        
        englishButton.snp.makeConstraints { make in
            make.top.equalTo(historyButton.snp.bottom).offset(60)
            make.right.equalToSuperview().inset(25)
            make.height.equalTo(150)
            make.width.equalTo(150)
        }
        
        explainLable.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(200) //explainLable의 하단이 현재 뷰의 하단에서 200 포인트 만큼 떨어지도록 설정한다.
            make.centerX.equalToSuperview() //explainLable이 X축을 기준으로 현재 뷰의 중앙에 위치하게 한다.
        }
        
    }
    
}
