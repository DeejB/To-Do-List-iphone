

import UIKit

var todomgr: todomanager = todomanager()

//global structure for list

struct list {
    var name = "name"
    var description = "description"
}

class todomanager: NSObject {
    
    var tasks = [list]()
    
    func addTolist(name: String, description: String){
        
        tasks.append(list(name: name, description: description))
    }
}
