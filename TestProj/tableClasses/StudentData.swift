//
//  StudentData.swift
//  TestProj
//
//  Created by Ербол on 17.06.2022.
//
// MARK: Структура хранящая названия предметов и время 
import Foundation
struct SData {
    var lection = "Лекция"
    var seminar = "Семинар"
    var lab = "Лабарат."
    var srsp = "СРСП"
    var srs = "СРС"
    struct Philosophy {
        
        var nameKk = "Философия"
        var nameRu = "Философия"
        var nameEn = "Philosophy"
        var lectionFactHours = 10
        var lectionPlanHours = 30
        var seminarFactHours = 5
        var seminarPlanHours = 15
        var labFactHours = 15
        var labPlanHours = 30
        var srspF = 2
        var srspP = 5
        var srsF = 8
        var srsP = 10
        var lesson3s : [Lesson] = [
        Lesson(lessonID: 1, hours: 30, realHours: 30),
        Lesson(lessonID: 2, hours: 15, realHours: 15),
        Lesson(lessonID: 3, hours: 30, realHours: 0)
        ]
        
        var lesson4s : [Lesson] = [
            Lesson(lessonID: 1, hours: 30, realHours: 20),
            Lesson(lessonID: 2, hours: 15, realHours: 10),
            Lesson(lessonID: 3, hours: 30, realHours: 15)
        ]
        
    }

    
    
    
    struct Chemistry {
        var nameKk = "Химия"
        var nameRu = "Химия"
        var nameEn = "Chemistry"
        var lection = "20/30"
        var seminar = "20/15"
        var lab = "0/30"
        var srsp = "20"
        var srs = "60"
        var lectionFactHours = 20
        var lectionPlanHours = 30
        var seminarFactHours = 15
        var seminarPlanHours = 20
        var labFactHours = 10
        var labPlanHours = 30
        var srspF = 2
        var srspP = 10
        var srsF = 6
        var srsP = 10
    }
    
    
    struct PhysicalCulture {
        var number = "3"
        var nameKk = "Дене Мәдениеті"
        var nameRu = "Физическая Культура"
        var nameEn = "Physical Culture"
        var lection = "0/30"
        var seminar = "60/60"
        var lab = "0/30"
        var srsp = "0"
        var srs = "0"
        var lectionFactHours = 15
        var lectionPlanHours = 30
        var seminarFactHours = 40
        var seminarPlanHours = 60
        var labFactHours = 10
        var labPlanHours = 30
        var srspF = 3
        var srspP = 10
        var srsF = 5
        var srsP = 10
        
        var lesson3s : [Lesson] = [
        Lesson(lessonID: 1, hours: 30, realHours: 0),
        Lesson(lessonID: 2, hours: 15, realHours: 15),
        Lesson(lessonID: 3, hours: 30, realHours: 0)
        ]
        var lesson4s : [Lesson] = [
            Lesson(lessonID: 1, hours: 30, realHours: 5),
            Lesson(lessonID: 2, hours: 15, realHours: 10),
            Lesson(lessonID: 3, hours: 30, realHours: 15)
        ]
    }
    
    
    
    struct Philosophy4 {
        var nameKk = "Философия"
        var nameRu = "Философия"
        var nameEn = "Philosophy"
        var lectionFactHours = 20
        var lectionPlanHours = 30
        var seminarFactHours = 10
        var seminarPlanHours = 15
        var labFactHours = 25
        var labPlanHours = 30
        var srspF = 4
        var srspP = 5
        var srsF = 9
        var srsP = 10
        var lesson3s : [Lesson] = [
        Lesson(lessonID: 1, hours: 30, realHours: 30),
        Lesson(lessonID: 2, hours: 15, realHours: 15),
        Lesson(lessonID: 3, hours: 30, realHours: 0)
        ]
        
        var lesson4s : [Lesson] = [
            Lesson(lessonID: 1, hours: 30, realHours: 20),
            Lesson(lessonID: 2, hours: 15, realHours: 10),
            Lesson(lessonID: 3, hours: 30, realHours: 15)
        ]
        
    }

    
    
    
    struct Chemistry4 {
        var nameKk = "Химия"
        var nameRu = "Химия"
        var nameEn = "Chemistry"
        var lection = "20/30"
        var seminar = "20/15"
        var lab = "0/30"
        var srsp = "20"
        var srs = "60"
        var lectionFactHours = 15
        var lectionPlanHours = 30
        var seminarFactHours = 5
        var seminarPlanHours = 20
        var labFactHours = 25
        var labPlanHours = 30
        var srspF = 5
        var srspP = 10
        var srsF = 9
        var srsP = 10
    }
    
    
    struct PhysicalCulture4 {
        var number = "3"
        var nameKk = "Дене Мәдениеті"
        var nameRu = "Физическая Культура"
        var nameEn = "Physical Culture"
        var lection = "0/30"
        var seminar = "60/60"
        var lab = "0/30"
        var srsp = "0"
        var srs = "0"
        var lectionFactHours = 20
        var lectionPlanHours = 30
        var seminarFactHours = 50
        var seminarPlanHours = 60
        var labFactHours = 20
        var labPlanHours = 30
        var srspF = 6
        var srspP = 10
        var srsF = 2
        var srsP = 10
        
        var lesson3s : [Lesson] = [
        Lesson(lessonID: 1, hours: 30, realHours: 0),
        Lesson(lessonID: 2, hours: 15, realHours: 15),
        Lesson(lessonID: 3, hours: 30, realHours: 0)
        ]
        var lesson4s : [Lesson] = [
            Lesson(lessonID: 1, hours: 30, realHours: 5),
            Lesson(lessonID: 2, hours: 15, realHours: 10),
            Lesson(lessonID: 3, hours: 30, realHours: 15)
        ]
    }
    
    struct Lesson {
        var lessonID = 1
        var hours  = 1
        var realHours = 1
    }
}
