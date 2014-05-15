# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Privilege.create(id: 1 ,name: 'Administrator', description: 'Administrator')
Privilege.create(id: 2, name: 'Tutor', description: 'Tutor')
Privilege.create(id: 3, name: 'Member', description: 'Member')

User.create(id: 2, privilege_id: 1, username: 'admin', password: 'admin', email: 'admin@admin.com', name: 'admin', family_name: 'admin', account_activated: '1', activation_code: 'bla')