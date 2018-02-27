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
    data = CSV.read(file_path, headers: true)
    data_to_hash = data.map { |datum| @employees << datum}
  end
end

# header_converters: :symbol
