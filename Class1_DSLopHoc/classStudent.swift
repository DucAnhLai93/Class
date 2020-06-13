//
//  ClassSinhVien.swift
//  Class1_DSLopHoc
//
//  Created by Lại Đức Anh on 13.06.20.
//  Copyright © 2020 Lại Đức Anh. All rights reserved.
//
//Hãy xây dựng một chương trình quản lý sinh viên trong lớp học.
//Mồi lớp học bắt buộc có tên lớp, tên giáo viên chủ nhiệm và danh sách các bạn sinh viên trong lớp.
//Mồi sinh viên bắt buộc có tên, tuổi và có thể có số điện thoại



import Foundation
class Student{
    
    var stName: String
    var stAge : Int
    var stTel : String?
    init(stName: String, stAge: Int, stTel: String?){
        self.stName = stName
        self.stAge = stAge
        self.stTel = stTel
    }
    
    init(stName: String, stAge: Int){
        self.stName = stName
        self.stAge = stAge
        self.stTel = " "
    }
    
    func setName(newName: String){
        self.stName = newName
    }
    
    func findStudent(newName: String) -> Bool{
        var result: Bool = true
        if(self.stName == newName){
            result = true
        }
        else {
            result = false
        }
        return result
    }
   
    func getInfo(){
        print("Sinh viên: \(stName)", ",","Tuổi: \(stAge)",",","SDT: \(stTel ?? "Không có SDT")")

    }
    
}
