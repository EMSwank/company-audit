require './test/test_helper'
require './lib/project'

class ProjectTest < Minitest::Test
  def test_it_exists
  project_id = '123'
  name = 'Widget Maker'
  start_date = '2015-01-01'
  end_date = '2018-01-01'
  project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

  a
  end

end
