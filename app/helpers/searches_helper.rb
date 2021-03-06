module SearchesHelper
    def parse_courses(search)
        courses = Course.where("name like ?", "%#{@search.course}%")
        if @search.usesubj
            subjID = Subject.where(name: @search.subject).first.subj_id
            courses_edited = Coursubs.where(subj_id: subjID)
            final_cour = {}
            courses_edited.each do |cs|
                clas = courses.select(|c| c.abbreviation == cs.cour_id).first
                if clas != nil
                    final_cour.push(clas)
                end
            end
            final_cour
        else
            return courses
        end
    end
end
