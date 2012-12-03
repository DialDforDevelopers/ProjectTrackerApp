require 'project'
require 'developer'
require 'company'
d1 = Developer.new("Susan","susan")
d2 = Developer.new("Rojace","rojace")
d3 = Developer.new("Barun", "barun") 
d4 = Developer.new("Pradeep","pradeep")
d5 = Developer.new("Amit","amit")
d6 = Developer.new("Bhanu","don")
d7 = Developer.new("Nikita","niks")


myProject3 = Project.new("cf3")
myProject3.addDeveloper(d4)

myProject2 = Project.new("cf2")
myProject2.addDeveloper(d3)
myProject2.addDeveloper(d4)

myProject = Project.new("cf")
myProject.addDeveloper(d1)
myProject.addDeveloper(d2)

d1.addInvolvedProjects(myProject)
d2.addInvolvedProjects(myProject)

d3.addInvolvedProjects(myProject2)
d4.addInvolvedProjects(myProject2)


=begin
firstCompany = Company.new("DialDForDevelopers")
firstCompany.addProjects(myProject2)
firstCompany.showDeveloper

=end
secondCompany = Company.new("Seventy-eight")
secondCompany.addProjects(myProject)
secondCompany.addProjects(myProject3)
secondCompany.info

=begin
puts "\n My Project 2"
myProject2.info
puts "\n Developer Class"
d1.info
=end