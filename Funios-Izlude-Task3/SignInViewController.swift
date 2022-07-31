//
//  ViewController.swift
//  Funios-Izlude-Task3
//
//  Created by FauziArda on 30/07/22.
//

import UIKit

class SignInViewController: UIViewController {
    
    lazy var topStackView : UIStackView = {
       let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.backgroundColor = .systemBlue
        return stack
    }()
    
    lazy var topInnerHStack : UIStackView = {
       let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillProportionally
        return stack
    }()
    
    lazy var bottomStackView : UIStackView = {
       let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        return stack
    }()
    
    lazy var outerStackView : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        return stack
    }()
    
    lazy var buttonSignUp : UIButton = {
        let button = UIButton()
        button.setTitle("SignIn", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(UIColor(named: "inactive"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        button.addTarget(self, action: #selector(handleSignIN), for: .touchUpInside)
        
        return  button
    }()
    lazy var buttonSignIn : UIButton = {
        let button = UIButton()
        button.setTitle("SignUp", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(UIColor(named: "active"), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        button.addTarget(self, action: #selector(handleSignUP), for: .touchUpInside)
        
        return  button
    }()
    
    lazy var usernameTextField : UIStackView = {
        let tf = UITextFieldWithPadding()
         tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Username"
        tf.textColor = UIColor(named: "active")
        
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        line.backgroundColor = UIColor(named: "inactive")
        
        let vstack = UIStackView()
        vstack.distribution = .fillProportionally
        vstack.axis = .vertical
        vstack.spacing = 0
        vstack.alignment = .leading
        
        vstack.addArrangedSubview(tf)
        vstack.addArrangedSubview(line)
        
        tf.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        line.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        
        return vstack
    }()
    lazy var fullnameTextField : UIStackView = {
        let tf = UITextFieldWithPadding()
         tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Full Name"
        tf.textColor = UIColor(named: "active")
        
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        line.backgroundColor = UIColor(named: "inactive")
        
        let vstack = UIStackView()
        vstack.distribution = .fillProportionally
        vstack.axis = .vertical
        vstack.spacing = 0
        vstack.alignment = .leading
        
        vstack.addArrangedSubview(tf)
        vstack.addArrangedSubview(line)
        
        tf.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        line.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        
        return vstack
    }()
    
    lazy var emailTextField : UIStackView = {
        let tf = UITextFieldWithPadding()
         tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Email"
        tf.textColor = UIColor(named: "active")
        
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        line.backgroundColor = UIColor(named: "inactive")
        
        let vstack = UIStackView()
        vstack.distribution = .fillProportionally
        vstack.axis = .vertical
        vstack.spacing = 0
        vstack.alignment = .leading
        
        vstack.addArrangedSubview(tf)
        vstack.addArrangedSubview(line)
        
        tf.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        line.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        
        return vstack
    }()
    
    lazy var passwordTextField : UIStackView = {
        let tf = UITextFieldWithPadding()
         tf.translatesAutoresizingMaskIntoConstraints = false
        tf.placeholder = "Password"
        tf.textColor = .white
        
        let line = UIView()
        line.translatesAutoresizingMaskIntoConstraints = false
        line.heightAnchor.constraint(equalToConstant: 2).isActive = true
        line.backgroundColor = UIColor(named: "inactive")
        
        let vstack = UIStackView()
        vstack.distribution = .fillProportionally
        vstack.axis = .vertical
        vstack.spacing = 0
        vstack.alignment = .leading
        
        vstack.addArrangedSubview(tf)
        vstack.addArrangedSubview(line)
        
        tf.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        line.widthAnchor.constraint(equalTo: vstack.widthAnchor).isActive = true
        
        return vstack
    }()
    
    lazy var signUpButton : UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.backgroundColor = UIColor(named: "active")
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        button.contentEdgeInsets = UIEdgeInsets(top: 15, left: 0, bottom: 15, right: 0)
        button.addTarget(self, action: #selector(handleSignInButton), for: .touchUpInside)
       
        button.layer.cornerRadius = 10
        return  button
    }()
    
    @objc func handleSignInButton(){
        print("Hello")
    }
    
    @objc func handleSignUP() {
        print("Hello")
    }
    
    @objc func handleSignIN() {
        print("Hello")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }
    
    func setupView() {
        view.backgroundColor = UIColor(named: "bg")
        view.addSubview(outerStackView)
        
        // get size of phone
        let width = view.frame.width
        let heigh = view.frame.size.height
        print(heigh)
        let bgimg = resizeImage(image: UIImage(named: "bgtop")!, targetSize: CGSize(width: 400, height: 275))
        
        
        topStackView.backgroundColor = UIColor(
            patternImage:bgimg
        )
        
        
        outerStackView.addArrangedSubview(topStackView)
        outerStackView.addArrangedSubview(bottomStackView)
        
       
        topStackView.addArrangedSubview(UIView())
        topStackView.addArrangedSubview(topInnerHStack)
        
        topInnerHStack.addArrangedSubview(UIView())
        topInnerHStack.addArrangedSubview(buttonSignIn)
        topInnerHStack.addArrangedSubview(buttonSignUp)
        
        topStackView.alignment = .trailing
        topStackView.distribution = .fill
        topStackView.axis = .vertical
        topStackView.spacing = 5
        
        //arrange view in bottom stackview
       
        bottomStackView.addArrangedSubview(usernameTextField)
        bottomStackView.addArrangedSubview(fullnameTextField)
        bottomStackView.addArrangedSubview(emailTextField)
        bottomStackView.addArrangedSubview(passwordTextField)
        bottomStackView.addArrangedSubview(UIView())
        
        let buttonSv = UIStackView()
        buttonSv.axis = .horizontal
        buttonSv.alignment = .center
        buttonSv.distribution = .equalCentering
        buttonSv.addArrangedSubview(UIView())
        buttonSv.addArrangedSubview(signUpButton)
        buttonSv.addArrangedSubview(UIView())
        
        bottomStackView.addArrangedSubview(buttonSv)
        bottomStackView.addArrangedSubview(UIView())
        
        bottomStackView.alignment = .leading
        bottomStackView.distribution = .fill
        
        bottomStackView.spacing = 32
        
        NSLayoutConstraint.activate([
            outerStackView.topAnchor.constraint(equalTo: view.topAnchor),
            outerStackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            outerStackView.rightAnchor.constraint(equalTo: view.rightAnchor),
            outerStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            topStackView.heightAnchor.constraint(equalTo: view.widthAnchor, constant: -124),
            
            buttonSignIn.rightAnchor.constraint(equalTo: buttonSignUp.leftAnchor, constant: -10),
            buttonSignIn.bottomAnchor.constraint(equalTo: topInnerHStack.bottomAnchor, constant: -10),
            buttonSignUp.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            buttonSignUp.bottomAnchor.constraint(equalTo: topInnerHStack.bottomAnchor, constant: -10)
        ])
        
        
        NSLayoutConstraint.activate([
            usernameTextField.topAnchor.constraint(equalTo: bottomStackView.topAnchor, constant: 64),
            usernameTextField.leftAnchor.constraint(equalTo: bottomStackView.leftAnchor, constant: 32),
            usernameTextField.rightAnchor.constraint(equalTo: bottomStackView.rightAnchor, constant: -32),
            
            fullnameTextField.trailingAnchor.constraint(equalTo: bottomStackView.trailingAnchor, constant: -32),
            
            emailTextField.trailingAnchor.constraint(equalTo: bottomStackView.trailingAnchor, constant: -32),
        
            passwordTextField.trailingAnchor.constraint(equalTo: bottomStackView.trailingAnchor, constant: -32),
            
            buttonSv.widthAnchor.constraint(equalTo: bottomStackView.widthAnchor, constant: -64),
            
            signUpButton.widthAnchor.constraint(equalToConstant: 200)
            
        ])
        
        
    }

}



#if DEBUG
import SwiftUI
struct SignInViewController_Preview : PreviewProvider {
    static var previews: some View{
        ViewControllerPreview {
            SignInViewController()
        }
    }
}

struct ViewControllerPreview: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController
    
    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Not needed
    }
}

#endif


