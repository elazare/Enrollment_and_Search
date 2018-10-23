module UsersHelper

    # Returns the Gravatar for the given user.
    def gravatar_for(user, size: 80)
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
        gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: user.name, class: "gravatar")
    end

    def display_courses(user)
        user_enrollments = Enrollment.where(user_id: user.id)
        list = ""
        user_enrollments.each do |e|
            cour_id = e.course_id
            name = Course.find_by(id: cour_id).abbreviation
            list += name + "\n"
        end
        list
    end
end