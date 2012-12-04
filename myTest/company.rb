class Company
	attr_accessor :company_name, :projects , :staff, :members

	def initialize(company_name)
		@company_name=company_name
		@projects=[]
		@staff=[]
		@members = []
	end

	def addProjects(projName)
		@projects.push(projName)
	end

	def showProjects
		@projects.each do |project| 
			puts project.projectName
		end
	end

	def addStaff(staff)
		@staff.push(staff.name)
	end	

	def showStaff
		@staff.sort!
		@staff.each do |person| 
			puts person
		end

	end

	def findFaultyStaff
		faultyStaff = Array.new
		faultyStaff = @staff - @members
		puts faultyStaff
	end

	def showDeveloper
		@projects.each do |developer|
			 @members = @members + developer.developers
			#developer.developers
		end
		@members.uniq!
		
	end

	def info
		puts "Company Name: "+ @company_name + "\n Company Projects: "
		self.showProjects
		self.showDeveloper		
		puts 'There are currently ' +  @members.length.to_s + ' developers'
		puts "Developer Name"
		puts @members

	end
end