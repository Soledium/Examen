# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

=begin
Region.destroy_all
Region.create(name:'Arica-Parinacota')
Region.create(name:'Tarapacá')
Region.create(name:'Antofagasta')
Region.create(name:'Atacama')
Region.create(name:'Coquimbo')
Region.create(name:'Valparaíso')
Region.create(name:'Metropolitana')
Region.create(name:'O Higgins')
Region.create(name:'Maule')
Region.create(name:'Ñuble')
Region.create(name:'Bío Bío')
Region.create(name:'Araucanía')
Region.create(name:'Los Ríos')
Region.create(name:'Los Lagos')
Region.create(name:'Aysén')
Region.create(name:'Magallanes y Antártica Chilena')
=end

=begin
TrainingPlan.destroy_all
TrainingPlan.create(training_plan_code:'A1', description:'Desarrollo de aplifaciones Frontend Trainee',hours:438)
TrainingPlan.create(training_plan_code:'A2', description:'Desarrollo de aplifaciones FullStack Java Trainee',hours:480)
TrainingPlan.create(training_plan_code:'A3', description:'Desarrollo de aplifaciones FullStack JavaScript Trainee',hours:472)
TrainingPlan.create(training_plan_code:'A4', description:'Desarrollo de aplifaciones FullStack Python Trainee',hours:462)
TrainingPlan.create(training_plan_code:'A5', description:'Emprendimiento digital con Ruby On Rails',hours:450)
=end

=begin
State.destroy_all
State.create(name:'Arica', region_id:1)
State.create(name:'Camarones', region_id:'1')
State.create(name:'Iquique', region_id:'2')
State.create(name:'Pozo Almonte', region_id:'2')
State.create(name:'Mejillones', region_id:'3')
State.create(name:'Antofagasta', region_id:'3')
State.create(name:'Copiapó', region_id:'4')
State.create(name:'Chañaral', region_id:'4')
State.create(name:'La Higuera', region_id:'5')
State.create(name:'Monte Patria', region_id:'5')
State.create(name:'Casablanca', region_id:'6')
State.create(name:'El Quisco', region_id:'6')
=end


=begin
Course.destroy_all
Course.create(start_date:'2022-03-16', end_date:'2022-08-09', training_plan_id:2, state_id:7, code:'0004')
Course.create(start_date:'2022-03-17', end_date:'2022-08-05', training_plan_id:4, state_id:7, code:'0010')
Course.create(start_date:'2021-12-20', end_date:'2022-03-05', training_plan_id:4, state_id:7, code:'0008')
Course.create(start_date:'2021-12-20', end_date:'2022-05-30', training_plan_id:3, state_id:7, code:'0006')
Course.create(start_date:'2022-04-05', end_date:'2022-07-21', training_plan_id:5, state_id:7, code:'0045')
Course.create(start_date:'2021-12-20', end_date:'2022-06-04', training_plan_id:4, state_id:7, code:'0009')
Course.create(start_date:'2022-03-15', end_date:'2022-08-12', training_plan_id:3, state_id:7, code:'0007')
Course.create(start_date:'2022-03-15', end_date:'2022-08-12', training_plan_id:2, state_id:7, code:'0001')
Course.create(start_date:'2022-03-17', end_date:'2022-08-09', training_plan_id:5, state_id:14, code:'0031')
Course.create(start_date:'2022-03-17', end_date:'2022-08-05', training_plan_id:5, state_id:14, code:'0046')
Course.create(start_date:'2022-03-15', end_date:'2022-08-06', training_plan_id:1, state_id:14, code:'0012')
Course.create(start_date:'2022-03-15', end_date:'2022-08-05', training_plan_id:2, state_id:7, code:'0003')
Course.create(start_date:'2022-03-17', end_date:'2022-08-06', training_plan_id:1, state_id:7, code:'0027')
Course.create(start_date:'2022-03-18', end_date:'2022-08-06', training_plan_id:5, state_id:12, code:'0044')
Course.create(start_date:'2022-03-19', end_date:'2022-08-12', training_plan_id:3, state_id:6, code:'0005')
Course.create(start_date:'2022-03-18', end_date:'2022-08-08', training_plan_id:5, state_id:8, code:'0032')
Course.create(start_date:'2022-03-19', end_date:'2022-08-08', training_plan_id:1, state_id:6, code:'0013')
Course.create(start_date:'2022-03-19', end_date:'2022-08-12', training_plan_id:2, state_id:7, code:'0029')
Course.create(start_date:'2022-03-18', end_date:'2022-08-06', training_plan_id:2, state_id:7, code:'0002')
Course.create(start_date:'2022-03-18', end_date:'2022-08-06', training_plan_id:2, state_id:7, code:'0028')
Course.create(start_date:'2022-03-16', end_date:'2022-08-06', training_plan_id:5, state_id:7, code:'0047')
=end


=begin
Student.destroy_all
Student.create(rut:'12.345.678-1',name:'Name1',last_name1:'Lastname_11',last_name2:'Lastname_12',address:'Address_1',state_id:7,course_id:1)
Student.create(rut:'22.345.678-2',name:'Name2',last_name1:'Lastname_21',last_name2:'Lastname_22',address:'Address_2',state_id:14,course_id:9)
Student.create(rut:'32.345.678-3',name:'Name3',last_name1:'Lastname_31',last_name2:'Lastname_32',address:'Address_3',state_id:6,course_id:15)
Student.create(rut:'42.345.678-4',name:'Name4',last_name1:'Lastname_41',last_name2:'Lastname_42',address:'Address_4',state_id:14,course_id:10)
Student.create(rut:'52.345.678-5',name:'Name5',last_name1:'Lastname_51',last_name2:'Lastname_52',address:'Address_5',state_id:7,course_id:12)
Student.create(rut:'62.345.678-6',name:'Name6',last_name1:'Lastname_61',last_name2:'Lastname_62',address:'Address_6',state_id:14,course_id:11)
Student.create(rut:'72.345.678-7',name:'Name7',last_name1:'Lastname_71',last_name2:'Lastname_72',address:'Address_7',state_id:7,course_id:2)
Student.create(rut:'82.345.678-8',name:'Name8',last_name1:'Lastname_81',last_name2:'Lastname_62',address:'Address_8',state_id:8,course_id:16)
Student.create(rut:'92.345.678-9',name:'Name9',last_name1:'Lastname_91',last_name2:'Lastname_92',address:'Address_9',state_id:7,course_id:3)
=end
