json.extract! instructor, :id, :email, :first, :last, :inst_id, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
