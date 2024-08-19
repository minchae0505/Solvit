import UIKit

class ScienceViewController: UIViewController {

    let quizView: UIView = {
       let view = UIView()
        view.layer.borderColor = .none //quizView의 테두리 색상을 설정한다.
        view.layer.borderWidth = 3 //quizView의 테두리 두께를 3포인트로 설정한다.
        view.layer.cornerRadius = 10 //view의 모서리를 둥글게 만들기 위해 모서리 둥글기를 10으로 설정한다.
        return view
    }()
    
    let quizLabel: UILabel = {
       let text = UILabel()
        text.text = "태양계에 있는 행성은 총 몇 개 일까요?"
        text.font = .boldSystemFont(ofSize: 18)
        return text
    }()
    
    let answer1: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("100개", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(answer1tapped), for: .touchUpInside)
        //addTarget을 통해 버튼이 눌렸을 때 화면이 이동하는 이벤트를 발생시킨다.
        return button
    }()
    
    @objc func answer1tapped() {
        self.navigationController?.pushViewController(WrongViewController(), animated: true)
    }
    //navigationController를 이용하여 WrongViewController 화면으로 이동

    let answer2: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("7개", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(answer2tapped), for: .touchUpInside)
        return button
    }()
    
    @objc func answer2tapped() {
        self.navigationController?.pushViewController(WrongViewController(), animated: true)
    }
    //navigationController를 이용하여 WrongViewController 화면으로 이동

    let answer3: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("8개", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(answer3tapped), for: .touchUpInside)
        return button
    }()
    
    @objc func answer3tapped() {
        self.navigationController?.pushViewController(RightViewController(), animated: true)
    }
    //navigationController를 이용하여 RightViewController 화면으로 이동

    let answer4: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("10개", for: .normal)
        button.layer.cornerRadius = 10
        button.addTarget(self, action: #selector(answer4tapped), for: .touchUpInside)
        return button
    }()
    
    @objc func answer4tapped() {
        self.navigationController?.pushViewController(WrongViewController(), animated: true)
    }
    //navigationController를 이용하여 WrongViewController 화면으로 이동

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(quizView)
        quizView.addSubview(quizLabel) //quizView에 quizLabel 서브뷰를 추가해준다.
        view.addSubview(answer1)
        view.addSubview(answer2)
        view.addSubview(answer3)
        view.addSubview(answer4)
    
        
        quizView.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(145)
            make.centerX.equalToSuperview()
            make.width.equalTo(345)
            make.height.equalTo(150)
        }
        
        quizLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        answer1.snp.makeConstraints { make in
            make.top.equalTo(quizView.snp.bottom).offset(65)
            make.left.equalToSuperview().inset(25)
            make.width.equalTo(160)
            make.height.equalTo(150)
        }
        
        answer2.snp.makeConstraints { make in
            make.top.equalTo(quizView.snp.bottom).offset(65)
            make.right.equalToSuperview().inset(25)
            make.width.equalTo(160)
            make.height.equalTo(150)
        }
        answer3.snp.makeConstraints { make in
            make.top.equalTo(answer1.snp.bottom).offset(30)
            make.left.equalToSuperview().inset(25)
            make.width.equalTo(160)
            make.height.equalTo(150)
        }
        answer4.snp.makeConstraints { make in
            make.top.equalTo(answer2.snp.bottom).offset(30)
            make.right.equalToSuperview().inset(25)
            make.width.equalTo(160)
            make.height.equalTo(150)
        }
    }
}


