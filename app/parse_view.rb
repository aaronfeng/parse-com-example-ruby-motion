class ParseView < UIView
  def drawRect(rect)
    button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    button.setTitle("Add Some Foo", forState:UIControlStateNormal)
    button.frame = [[50, 210], [200, 30]]
    button.addTarget self, action:'handle_click', forControlEvents:UIControlEventTouchUpInside
    addSubview(button)


    objectid_label = UILabel.alloc.initWithFrame([[100, 100], [100,25]])
    objectid_label.backgroundColor = UIColor.groupTableViewBackgroundColor
    objectid_label.text = "ObjectId is: "

    addSubview(objectid_label)

    @objectid_value_label = UILabel.alloc.initWithFrame([[90, 120], [150,25]])
    @objectid_value_label.backgroundColor = UIColor.groupTableViewBackgroundColor

    addSubview(@objectid_value_label)
  end

  def handle_click
    testObject = PFObject.objectWithClassName("TestObject")
    testObject.setObject("bar", forKey:"foo")
    testObject.save
    @objectid_value_label.text = testObject.objectId
  end
end
