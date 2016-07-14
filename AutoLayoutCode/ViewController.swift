import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let superview = self.view
        
        //label 객체 생성
        let myLabel = UILabel()
        //자동 리사이징 끄기
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.text = "My Lable"
        
        //버튼 객체 생성
        let myButton = UIButton()
        myButton.setTitle("My Button", forState: UIControlState.Normal)
        myButton.backgroundColor = UIColor.blueColor()
        //자동 리사이징 끄기
        myButton.translatesAutoresizingMaskIntoConstraints = false
        
        //메인뷰에 추가
        superview.addSubview(myLabel)
        superview.addSubview(myButton)
        
        var myConstratint =
            NSLayoutConstraint(item: myLabel,//item
                               attribute: NSLayoutAttribute.CenterY,//컨센트레인트 속성
                               relatedBy: NSLayoutRelation.Equal,//
                               toItem: superview,// 연관
                               attribute: NSLayoutAttribute.CenterY,//컨센트레인트 속성
                               multiplier: 1.0,
                               constant: 0)//거리
        
        //슈퍼뷰에 컨스트레인트 추가
        superview.addConstraint(myConstratint)
        
        myConstratint = NSLayoutConstraint(item: myLabel,
                                           attribute: NSLayoutAttribute.CenterX,
                                           relatedBy: NSLayoutRelation.Equal,
                                           toItem: superview,
                                           attribute: NSLayoutAttribute.CenterX,
                                           multiplier: 1.0,
                                           constant: 0)
        
        superview.addConstraint(myConstratint)
        
        myConstratint = NSLayoutConstraint(item: myButton,
                                           attribute: NSLayoutAttribute.Trailing,
                                           relatedBy: NSLayoutRelation.Equal,
                                           toItem: myLabel,
                                           attribute: NSLayoutAttribute.Leading,
                                           multiplier: 1.0,
                                           constant: -10)
        
        superview.addConstraint(myConstratint)
        
        myConstratint = NSLayoutConstraint(item: myButton,
                                           attribute: NSLayoutAttribute.Baseline,
                                           relatedBy: NSLayoutRelation.Equal,
                                           toItem: myLabel,
                                           attribute: NSLayoutAttribute.Baseline,
                                           multiplier: 1.0,
                                           constant: 0 )
        
        superview.addConstraint(myConstratint)
        
        //이런식으로 삭제 가능
        self.view.removeConstraint(myConstratint)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

