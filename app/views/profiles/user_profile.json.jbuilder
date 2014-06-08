 json.extract! @user_profile, :id, :name, :family_name, :email, :username, :created_at, :updated_at
 json.privilege @user_profile.privilege, :id, :name
 json.current_user @user, :id, :username
