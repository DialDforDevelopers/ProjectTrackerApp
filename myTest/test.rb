require 'Project'
require 'Developer'

d1 = Developer.new("Susan","susan")
d2 = Developer.new("Rojace","rojace")
d3 = Developer.new("Barun", "barun") 
- 
myProject = Project.new("cf")
myProject2 = Project.new("cf2")
myProject2.addDeveloper(d3)
myProject2.addDeveloper(d1)

myProject.addDeveloper(d1)
myProject.addDeveloper(d2)

d1.addInvolvedProjects(myProject)
d1.addInvolvedProjects(myProject2)


puts "\n My Project 2"
myProject2.info
puts "\n Developer Class"
d1.info