require './test/test_helper'
require './lib/company'

class CompanyTest < Minitest::Test
  def test_it_exists
    company = Company.new

    assert_instance_of Company, company
  end

  def test_it_starts_with_empty_arrays
    company = Company.new

    assert_equal [], company.employees
    assert_equal [], company.projects
    assert_equal [], company.timesheets
  end

  def test_it_reads_csv
    company = Company.new
    actual = company.load_employees("./data/employees.csv")

    assert_equal ({:success => true, :error => nil}), actual

    actual = company.load_employees("./data/bad_employees.csv")
    require 'pry'; binding.pry
    assert_equal ({:success => false, :error => 'bad file'}), actual
  end
end
