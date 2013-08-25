class MyTableView  < UITableViewController
  def viewDidLoad
    super
  end

  def init
    super
    if self
      tbi_title = self.tabBarItem
      tbi_title.title = "Table"
      tbi_pic = tabBarItem.initWithTabBarSystemItem(UITabBarSystemItemDownloads, tag:1)
    end
    self
  end

  def numberOfSectionsInTableView(tableView)
    1
  end

  def tableView(tableView, numberOfRowsInSection:section)
    20
  end
   
  def tableView(tableView, cellForRowAtIndexPath:indexPath)
    @cell_id ||= "CELL_ID"
    cell = tableView.dequeueReusableCellWithIdentifier(@cell_id)
    cell ||= UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@cell_id)
    
    cell.textLabel.text = "Hello Ruby at row #{indexPath.row}"
    cell
  end  

end
