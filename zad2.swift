import Foundation
import Glibc

class CheckListElement {
    var element_name:String
    var day:String
    var is_executed:Bool
    
    init(element_name:String = "Wyjsc na spacer ", is_executed:Bool = true, day:String = "Sobota ")
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
}

    let object1 = CheckListElement()
    object1.description()
    
    let object2 = CheckListElement(is_executed: false, day: "Niedziela ")
    object2.description()