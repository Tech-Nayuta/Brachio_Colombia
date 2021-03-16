//
//  SignupViewController.swift
//  Brachio_Colombia
//
//  Created by 神原良継 on 2021/03/16.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var signupMailTextField: UITextField!
    @IBOutlet weak var signupPassTextField: UITextField!
    var signupMailAddress: String = ""
    var signupPassWord: String = ""
    
    private let userRepository = UserRepository()
    
    @IBOutlet weak var forCornerButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        forCornerButton.layer.cornerRadius = 15.0
    }


    @IBAction func signupButton(_ sender: Any) {
        signupMailAddress = signupMailTextField.text!
        signupPassWord = signupPassTextField.text!
        
        userRepository.signup(email: signupMailAddress, password: signupPassWord) { [weak self] result in
            switch result {
            case .success():
                //画面遷移
                print("successされてる")
                let groupListVC = GroupListViewController()
                self?.navigationController?.pushViewController(groupListVC, animated: true)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
    @IBAction func toLoginButton(_ sender: Any) {
        //ログインボタンへの画面遷移
        self.navigationController?.popViewController(animated: true)
    }
}
