# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


######### GEOFENCE ######

geofence= Geofence.create([{area: 'Las Condes', country: 'Chile'}])

######### USERS #########

users = User.create([{name: 'Admin', lastname: 'Pissed',email:"admin@pissed.com",password: 'admin123',address: 'san carlos 2200',phone: '954240055', profile: 'admin profile', is_suspended: 'false',has_prev_suspension: 'false',is_blocked: 'false', geofence_id: 1,last_time:  DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),useris:'Admin'},
{name: 'Super Admin', lastname: 'Pissed',email: "sadmin@pissed.com",password: 'admin123',address: 'san carlos 2200',phone: '954247645', profile: 'super admin profile', is_suspended: 'false',has_prev_suspension: 'false',is_blocked: 'false', geofence_id: 1,last_time: DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),useris:'SuperAdmin'},
{name: 'User', lastname: 'Pissed',email: "user@pissed.com",password: 'password123',address: 'san carlos 2200',phone: '957247755', profile: 'user profile', is_suspended: 'false',has_prev_suspension: 'false',is_blocked: 'false', geofence_id: 1,last_time: DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),useris:'Regular'},
{name: 'Renegado', lastname: 'poster',email: "renegado@pissed.com",password: 'password123',address: 'san carlos 2200',phone: '954746855', profile: 'profile', is_suspended: 'true',has_prev_suspension: 'false',is_blocked: 'false', geofence_id: 1,last_time: DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),useris:'Regular'}])

######### POSTS ########

posts = Post.create([{creation_date: DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),text: "first post" ,title: "title from the first post",user_id: 3,geofence_id: 1,apropriated:"true", is_open: "true",is_solved:"false",share_counter: 0,report_counter:0,is_hidden:"false",is_linked: "true"},
{creation_date: DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),text: "Second post" ,title: "title from the second post",user_id: 2,geofence_id: 1,apropriated:"true", is_open: "true",is_solved:"false",share_counter: 0,report_counter:0,is_hidden:"false",is_linked: "true"},
{creation_date: DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),text: "from admin" ,title: "post made by admin",user_id: 1,geofence_id: 1,apropriated:"true", is_open: "true",is_solved:"false",share_counter: 0,report_counter:0,is_hidden:"false",is_linked: "true"},
{creation_date: DateTime.strptime("06/10/2019 17:00", "%m/%d/%Y %H:%M"),text: "this page sucks and the admin eat garbage" ,title: "shitty place",user_id: 4,geofence_id: 1,apropriated:"false", is_open: "false",is_solved:"false",share_counter: 0,report_counter:3,is_hidden:"true",is_linked: "true"}])
