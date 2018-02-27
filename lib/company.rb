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
    @employees = CSV.read(file_path)
     if CSV.read(file_path).include?
       success_hash = {}
       return success_hash = {:success => true, :error => nil}
     else
       return success_hash = {:success => false, :error => 'bad file'}
    # data = CSV.open(file_path)
  end
    # @projects << data
  #   data = CSV.read(file_path)
    # CSV.foreach(file_path) do |row|
    #   @projects<< row
    # end
    # @projects.to_h
  end
end

# header_converters: :symbol
