Before do
  @gb_lists = double
  gb = double
  @gb_lists.stub(:subscribe)
  gb.stub(:lists).and_return(@gb_lists)
  Gibbon::API.stub(:new).and_return(gb)
end
