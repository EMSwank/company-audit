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
    @employees = data.map do |datum|
      employee_hash = {datum[0].to_i => datum[1..4]}
    end
    @employees
    # data = CSV.open(file_path)
    # @projects << data
  #   data = CSV.read(file_path)
    # CSV.foreach(file_path) do |row|
    #   @projects<< row
    # end
    # @projects.to_h
  end
end

# header_converters: :symbol
