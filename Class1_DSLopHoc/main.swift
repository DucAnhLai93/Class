//
//  main.swift
//  Class1_DSLopHoc
//
//  Created by Lại Đức Anh on 13.06.20.
//  Copyright © 2020 Lại Đức Anh. All rights reserved.
//

import Foundation

var course1 = Course(cName: "ios1", cTeacher: "Quỳnh")

course1.setName(newName: "Quỳnh xinh")

course1.addStudent(s: Student(stName: "Nam", stAge: 20))
course1.addStudent(s: Student(stName: "Hoàng", stAge: 21))
course1.addStudent(s: Student(stName: "Linh", stAge: 24))
course1.addStudent(s: Student(stName: "Huyền", stAge: 25))
course1.addStudent(s: Student(stName: "Đức", stAge: 22))
course1.addStudent(s: Student(stName: "Dương", stAge: 19, stTel: "0984716827"))
course1.addStudent(s: Student(stName: "Tùng", stAge: 26, stTel: "0984125875"))
course1.addStudent(s: Student(stName: "Bằng", stAge: 21, stTel: "0984121811"))
course1.addStudent(s: Student(stName: "Bắc", stAge: 19, stTel: "0984716121"))
course1.addStudent(s: Student(stName: "Thanh", stAge: 19, stTel: "0984716222"))

course1.getInfo()

course1.findStudent(studentName: "Nam")
course1.changeStudent()
course1.delStudent(newname: "Bằng")
course1.getInfo()
