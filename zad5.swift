import Foundation
import Glibc
import Foundation

    protocol ControlProtocol {
    var element_name: String { get }
    }

    protocol DelegateProtocol : class {
    func show_matrix()
    func execute_task_status()
    }

class CheckList : DelegateProtocol {

var days = [CheckListElement]()

let dzien1 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 1 ", task_status: "Do Wykonania")
let dzien2 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 2 ", task_status: "Do Wykonania")
let dzien3 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 3 ", task_status: "Do Wykonania")
let dzien4 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 4 ", task_status: "Do Wykonania")
let dzien5 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 5 ", task_status: "Do Wykonania")
let dzien6 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 6 ", task_status: "Do Wykonania")
let dzien7 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 7 ", task_status: "Do Wykonania")
let dzien8 = CheckListElement(element_name:"Wyjsc na spacer ", is_executed: false, day: "Dzien 8 ", task_status: "Do Wykonania")

    init()
    {
        self.days = [CheckListElement]()
        
        days.append(dzien1)
        days.append(dzien2)
        days.append(dzien3)
        days.append(dzien4)
        days.append(dzien5)
        days.append(dzien6)
        days.append(dzien7)
        days.append(dzien8)
    }
    
    func execute_task_status()
    {
        print("Zmiana statusu zadania")
        dzien7.task_status = "Gotowe"
    }

    func show_matrix()
    {
    print("Wyswietlenie co trzeciego obiektu")
    var y : Int = 0
        
    for i in days{
    if(y%3 == 0){
        print(i.day, i.element_name, i.task_status)
        }
        y = y + 2
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
