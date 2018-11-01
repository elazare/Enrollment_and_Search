module SearchHelper
    def parse_courses(search)
        courses = Course.where("name like ?", "%#{@search.course}%")
        if @search.usesubj
            subjID = Subject.where(name: @search.subject).first.subj_id
            courses_edited = Coursub.where(subj_id: subjID)
            final_cour = {}
            courses_edited.each do |cs|
                clas = nil
                courses.each do |c|
                    if c.abbreviation == cs.cour_id
                        clas = c 
                    end
                end
                if clas != nil
                    final_cour.push(clas)
                end
            end
            return final_cour.map{|c| c.name}
        else
            return courses.map{|c| c.name}
        end
    end
end
