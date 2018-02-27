require './test/test_helper'
require './lib/project'

class ProjectTest < Minitest::Test
  def test_it_exists
  project_id = '123'
  name = 'Widget Maker'
  start_date = '2015-01-01'
  end_date = '2018-01-01'
  project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

  assert_instance_of Project, project
  end

  def test_it_takes_attributes
    project_id = '123'
    name = 'Widget Maker'
    start_date = '2015-01-01'
    end_date = '2018-01-01'
    project = Project.new('123', 'Widget Maker', '2015-01-01', '2018-01-01')

    assert_equal 123, project.project_id
    assert_equal 'Widget Maker', project.name
    assert_equal '2015-01-01', project.start_date
    assert_equal '2018-01-01', project.end_date
  end

end
