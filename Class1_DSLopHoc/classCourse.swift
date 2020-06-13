//
//  classCourse.swift
//  Class1_DSLopHoc
//
//  Created by Lại Đức Anh on 13.06.20.
//  Copyright © 2020 Lại Đức Anh. All rights reserved.
//

import Foundation

class Course{
    var cName: String
    var cTeacher: String
    
    init(cName: String, cTeacher:String){
        self.cName = cName
        self.cTeacher = cTeacher
    }
    var list: [Student] = []
    func addStudent(s: Student){
        list.append(s)
    }
    
    func setName(newName: String){
        self.cTeacher = newName
    }
    
    func findStudent(studentName: String){
        for item in list{
            if(item.stName == studentName){
                print("Tìm thấy sinh viên \(studentName) trong list")
            }
            else{
                print("Không tìm thấy sinh viên \(studentName) trong list")
            }
        }
        
    }
    
    //    func changeStudent(oldStudent: String, newStudent: String){
    //        for item in list{
    //            if(item.findStudent(oldStudent: String) = true){
    //                item.stName = newStudent
    //                print("Thay thế tên thành công!")
    //            }
    //            else{
    //                print("Thay thế tên không thành công.")
    //            }
    //
    //        }
    //    }
    
    func delStudent(newname: String){
        for (index, value) in list.enumerated() {
            if(value.stName == newname){
                list.remove(at: index)
                print("Xóa thành công.")
            }
            else{
                print("Không tìm thấy tên sinh viên, xóa không thành công.")
            }
            
        }
    }
    
    
    func changeStudent(){
        print("Tên sinh viên cũ muốn thay tên: ")
        let oldStudent = String(readLine() ?? "")
        print("Tên sinh viên mới: ")
        let newStudent = String(readLine() ?? "")
        for item in list{
            if(item.stName == oldStudent){
                item.stName = newStudent
                print("Thay thế tên thành công.")
            }
            else{
                print("Không tìm thấy sinh viên để thay thế.")
            }
        }
    }
    
    func getInfo(){
        print("Tên lớp học là: \(cName)","Tên giáo viên là: \(cTeacher)")
        for s in list{
            s.getInfo()
        }
    }
}

