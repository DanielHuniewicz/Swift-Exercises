import Foundation
import Glibc

class CheckListElement {
    var element_name:String
    var is_executed:Bool
    
    init(element_name:String = "Poniedzialek zrobic pranie ", is_executed:Bool = true)
    {
        self.element_name = element_name
        self.is_executed = is_executed
    }
    
    func description()
    {
        if (is_executed == true)
            {print((element_name)+("-> Gotowe"))}
        else
            {print((element_name)+("-> Do Wykonania"))}
    }
}

    let object1 = CheckListElement()
    object1.description()
    
    let object2 = CheckListElement(is_executed: false)
    object2.description()