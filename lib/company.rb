require 'csv'
class Company
  attr_reader :employees,
              :projects,
              :timesheets

  def initialize
    @employees = []
    @projects = []
    @timesheets = []
  end

  def load_employees(file_path)
    data = CSV.read(file_path)
    CSV.foreach(file_path) do |row|
      @employees << row
    end
    @employees.to_h
  end
end

# header_converters: :symbol
