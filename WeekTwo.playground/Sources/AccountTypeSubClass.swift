import Foundation
// MARK: - SavingAccount Subclass
public class SavingsAccount: Account{
    
    public override init(id: Int, customerId: Int, accountBalance: Int = 0, interestRate: Double = 0.1) {
        super.init(id: id, customerId: customerId, accountBalance: accountBalance, interestRate: interestRate)
    }
    
    public override func deposit(_ amount: Int) -> String {
        guard amount > 0 else {
            return "You can't deposit #0"
        }
        self.accountBalance += amount
        let newBalance = super.bonus()
        return "Your deposit of #\(amount / 100) is Successful, also \(newBalance)"
        
    }
}

// MARK: - SavingAccount Subclass
public class CurrentAccount: Account{
    
    public override init(id: Int, customerId: Int, accountBalance: Int = 0, interestRate: Double = 0.05) {
        super.init(id: id, customerId: customerId, accountBalance: accountBalance, interestRate: interestRate)
    }
    
    public override func withdrawal (_ amount: Int) -> String {
        guard amount < self.accountBalance else {
            return "Insuffienct Account balance"
        }
        self.accountBalance -= amount
        let newBalance = super.charge()
        return "Your withdrawal of \(amount) is Successful, also \(newBalance)"

    }
}
