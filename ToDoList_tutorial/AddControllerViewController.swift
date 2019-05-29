//
//  AddControllerViewController.swift
//  ToDoList_tutorial
//
//  Created by shu26 on 2019/05/29.
//  Copyright © 2019 Swift-Beginners. All rights reserved.
//

import UIKit
var TodoContent = [String]()

class AddControllerViewController: UIViewController {
    @IBOutlet weak var TodoTextField: UITextField!
    @IBAction func ToAddButton(_ sender: Any) {
        TodoContent.append(TodoTextField.text!)
        TodoTextField.text = nil
        UserDefaults.standard.set( TodoContent, forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
