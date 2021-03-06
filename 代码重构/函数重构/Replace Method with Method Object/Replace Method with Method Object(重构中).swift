//--------1:创建函数对象，将代码进行迁移，并在原类中进行委托----------------
class Account {
    func discount(inputVal: Int, quantity: Int, yearToDate: Int) -> Int {
        return Discount(account: self, inputVal: inputVal, quantity: quantity, yearToDate: yearToDate).compute()
    }
}


class Discount {
    private let account: Account
    
    private var inputVal: Int
    private var quantity: Int
    private var yearToDate: Int
    private var importantValue1: Int = 0
    private var importantValue2: Int = 0
    private var importantValue3: Int = 0
    
    
    init(account:Account, inputVal: Int, quantity: Int, yearToDate: Int) {
        self.account = account
        self.inputVal = inputVal
        self.quantity = quantity
        self.yearToDate = yearToDate
    }
    
    func compute() -> Int {
        
        importantValue1 = inputVal * quantity + 10
        importantValue2 = inputVal * yearToDate + 100
        
        if (yearToDate - importantValue1) > 100 {
            importantValue2 -= 2
        }
        
        importantValue3 = importantValue2 * 8
        
        return importantValue3 - 2 * importantValue1
    }
    
}
