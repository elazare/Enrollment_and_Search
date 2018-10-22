# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

Course.destroy_all
Instructor.destroy_all
Subject.destroy_all
Coursub.destroy_all

courJson = JSON.parse(File.read("/home/eli/Enrollment_and_Search/db/course.json"))
instJson = JSON.parse(File.read("/home/eli/Enrollment_and_Search/db/instructor.json"))
subjJson = JSON.parse(File.read("/home/eli/Enrollment_and_Search/db/subject.json"))

i = 0
while subjJson[i] != nil
    subject = Subject.new do |s|
        s.name = subjJson[i]["name"]
        s.subj_id = subjJson[i]["id"]
    end
    subject.save
    i += 1
end

i = 0

while courJson[i] != nil
    course = Course.new do |c|
        c.name = courJson[i]["name"]
        c.description = courJson[i]["description"]
        c.abbreviation = courJson[i]["code"]
    end
    course.save
    j = 0
    while courJson[i]["subjects"][j] != nil
        if Subject.exists?(subj_id: courJson[i]["subjects"][j]["id"])
            coursub = Coursub.new do |cs|
                cs.subj_id = Subject.where(subj_id: courJson[i]["subjects"][j]["id"]).first.id
                cs.cour_id = course.id
            end
            coursub.save
        end
        j += 1
    end
    i += 1
end

i = 0

while instJson[i] != nil
    instructor = Instructor.new do |n|
        n.email = instJson[i]["email"]
        n.first = instJson[i]["first"]
        n.last = instJson[i]["last"]
    end
    instructor.save
    i += 1
end