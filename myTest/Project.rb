class Project
	attr_accessor :projectName, :startDate, :finishDate
	def initialize(projectName, startDate, finishDate)
		@projectName = projectName
		@startDate = startDate
		@finishDate = finishDate
	end
end
