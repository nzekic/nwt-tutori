 json.extract! @subject, :id, :name, :description, :created_at, :updated_at
 json.science_field @subject.research_area, :id, :name, :description
 json.tutors(@subject.users) do |tutor|
 	json.id tutor.id
 	json.username tutor.username
 	json.first_name tutor.name
 	json.last_name tutor.family_name
 end
