

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var listTasks: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // update list view after addition or deletion of tasks
    
    override func viewWillAppear(animated: Bool) {
     
        listTasks.reloadData()
    }
    
    // addition of delete function for items on list (removes info and updates table)
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            
            todomgr.tasks.removeAtIndex(indexPath.row)
            listTasks.reloadData()
        }
    
    
    }
    
    //count the number of rows needed for the list also second function adds data to each respective cell
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return todomgr.tasks.count
    }
    
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell{
    
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "default")
        
        cell.textLabel?.text = todomgr.tasks[indexPath.row].name;
        
        cell.detailTextLabel?.text = todomgr.tasks[indexPath.row].description
        
        return cell
    }


}

