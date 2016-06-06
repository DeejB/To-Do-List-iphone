

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtinfo: UITextField!
    @IBOutlet var txtdesc: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // add to list event
    
    @IBAction func addTolist(sender: UIButton){
        
        todomgr.addTolist(txtinfo.text!, description: txtdesc.text!)
        self.view.endEditing(true)
        txtinfo.text = ""
        txtdesc.text = ""
        self.tabBarController?.selectedIndex = 0
    }
    
    // keypad/touch functions
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }

    
}

