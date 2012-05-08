class ParseController < UIViewController
  def loadView
    self.view = ParseView.alloc.init
    self.view.backgroundColor = UIColor.groupTableViewBackgroundColor
  end
end
