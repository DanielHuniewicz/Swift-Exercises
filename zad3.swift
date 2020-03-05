import Foundation
import Glibc

class CheckListElement: ControlProtocol {
    var element_name:String
    var day:String
    var is_executed:Bool
    
    init(element_name:String = "Wyjsc na spacer ", is_executed:Bool = false, day:String = "Sobota ")
    {
        self.element_name = element_name
        self.is_executed = is_executed
        self.day = day
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
        print("Zmiana zadania na wykonane")
        is_executed = true;
    }
}

    protocol ControlProtocol {
        var element_name: String { get }
    }

    let object1 = CheckListElement()
    object1.description()
    object1.execute_task()
    object1.description()
    