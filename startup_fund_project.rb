class Project
  attr_accessor :name
  attr_reader :target, :funding

  def initialize (name, target_funding_amount,funding=0)
    @name = name
    @target = target_funding_amount
    @funding = funding
  end

  def to_s
    "#{@name} has #{@funding}GBP in funding towards a goal of #{@target}GBP." 
  end 
  
  def add_funds(amount)
    @funding = @funding + amount
  end

  def remove_funds(amount)
    @funding = @funding - amount
  end

  def total_funding_remain
    @target - @funding
  end

end

class FundRequest
  attr_accessor :title

  def initialize (title)
    @title = title
    @projects = []
  end

  def add_project(project_no)
    @projects.push(project_no)
    # puts @projects.size
  end

  def request_funding
    puts "There are #{@projects.size} projects that you could fund:"
    @projects.each do |project|
      puts project
    end

    @projects.each do |project|
      puts "Current Status:"
      project.add_funds(100)
      project.remove_funds(30)
      project.add_funds(10.10)
      puts project
    end
  end

end

project_1 = Project.new("Project ABC", 5000, 1000)
project_2 = Project.new("Project LMN", 3000, 500)
project_3 = Project.new("Project XYZ", 75, 25)

# puts project_1.add_funds(100)
# project_1.name = "shweta"
# puts "dsfsdfs"
# puts project_1

project_request = FundRequest.new("VC-Friendly Start-up Projects")
project_request.add_project(project_1)
project_request.add_project(project_2)
project_request.add_project(project_3)

project_request.request_funding