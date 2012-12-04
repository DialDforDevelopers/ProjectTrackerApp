require 'project'
require 'developer'
require 'company'

d1 = Developer.new("Susan","susan@hotmail.company")
d2 = Developer.new("Rojace","rojace@hotmail.com")
d3 = Developer.new("Barun", "barun@hotmail.com") 
d4 = Developer.new("Pradeep","pradeep@hotmail.com")
d5 = Developer.new("Amit","amit@hotmail.com")
d6 = Developer.new("Bhanu","don@hotmail.com")
d7 = Developer.new("Nikita","niks@hotmail.com")


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
d4.addInvolvedProjects(myProject3)


=begin
firstCompany = Company.new("SeventyEight")
firstCompany.addProjects(myProject2)
firstCompany.showDeveloper

=end

#new company creation
secondCompany = Company.new("DialDForDevelopers")
secondCompany.addProjects(myProject)
secondCompany.addProjects(myProject3)
d1.addInvolvedCompany(secondCompany)
d2.addInvolvedCompany(secondCompany)
d4.addInvolvedCompany(secondCompany)
#puts d1.companyInvolved    //shows the company in which d1 developer is involved


secondCompany.info

=begin
puts "\n My Project 2"
myProject2.info
puts "\n Developer Class"
d1.info
=end