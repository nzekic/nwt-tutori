json.extract! @user, :id, :privilege_id, :username, :password, :email, :name, :family_name, :location, :account_activated, :activation_code, :created_at, :updated_at
json.privilege @user.privilege, :id, :name
json.subjects @user.subjects, :id, :name

