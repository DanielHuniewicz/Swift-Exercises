import Foundation
import Glibc

    protocol ControlProtocol {
    var element_name: String { get }
    }

    protocol DelegateProtocol : class {
    func show_matrix()
    func execute_task_status()
    }

class CheckList : DelegateProtocol {

var days = [CheckListElement]()
let poniedzialek = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Poniedzialek ", task_status: "Do Wykonania")
let wtorek = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Wtorek ", task_status: "Do Wykonania")
let sroda = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Sroda ", task_status: "Do Wykonania")
let czwartek = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Czwartek ", task_status: "Do Wykonania")

    init()
    {
        self.days = [CheckListElement]()
        
        days.append(poniedzialek)
        days.append(wtorek)
        days.append(sroda)
        days.append(czwartek)
    }
    
    func execute_task_status()
    {
        print("Zmiana statusu zadania")
        poniedzialek.task_status = "Gotowe"
    }

    func show_matrix()
    {
        print("Wyswietlenie obiektow:")
        for i in days {
            print(i.day, i.element_name, i.task_status)
        } 
    }
}

class CheckListElement: ControlProtocol{
    var element_name:String
    var task_status:String
    var day:String
    var is_executed: Bool


    weak var delegate: DelegateProtocol?

    init(element_name:String = "Wyjsc na spacer ", is_executed:Bool = false, day:String = "Sobota ", task_status:String = "Do Wykonania")
    {
        self.element_name = element_name
        self.is_executed = is_executed
        self.day = day
        self.task_status = task_status
    }
    
    func description()
    {
        if (is_executed == true)
            {print((day)+(element_name)+("-> Gotowe"))}
        else
            {print((day)+(element_name)+("-> Do Wykonania"))}
    }
    
    func execute_task()
    {
        print("Wykonanie protokolu")
        delegate?.execute_task_status()
        delegate?.show_matrix()
    }
}

let ob1 = CheckList()
let ob2 = CheckListElement()

ob2.delegate = ob1
ob2.execute_task()
