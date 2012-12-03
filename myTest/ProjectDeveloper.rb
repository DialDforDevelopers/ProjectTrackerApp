require 'Developer.rb'
require 'Project'
class ProjectDeveloper
	
	def initialize( )
		@projectObject = Project.new('cf', '12', '13')
		@developerObject = Developer.new('susan','susan')
		puts 'yes'

	end
	
	private
	attr_reader :projectObject, :developerObject 
end