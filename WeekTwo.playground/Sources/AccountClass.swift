import Foundation

public class Account {
    // MARK: - Properties
    public let id: Int
    public var customerId: Int
    public var accountBalance: Int
    public var interestRate: Double
    public let chargeFee : Int = 10_000
    public let bonusAmount: Int = 1_000
    // MARK: - initializers
    public init(id: Int, customerId: Int, accountBalance: Int = 0, interestRate: Double = 0.0) {
        self.id = id
        self.customerId = customerId
        self.accountBalance = accountBalance
        self.interestRate = interestRate
    }
    // MARK: - Methods
    public func withdrawal (_ amount: Int) -> String {
        guard amount < self.accountBalance else {
            return "Insuffienct Account balance"
        }
        self.accountBalance -= amount
        return "Your withdrawal of #\(amount/100) is Successful, new balance is now #\( accountBalance / 100)"
    }
    public func deposit (_ amount: Int) -> String {
        guard amount > 0 else {
            return "You can't deposit #0"
        }
        self.accountBalance += amount
        return "Your deposit of #\(amount/100) is Successful, new balance is now #\(accountBalance/100)"
    }
    
    public func charge () -> String {
        self.accountBalance -= chargeFee
        return "A charge of #100.00 was made, new balance is now #\(accountBalance / 100)"
    }
    
    public func bonus() -> String {
        self.accountBalance += bonusAmount
        return "You received a bonus of #10.00, new balance is now #\(accountBalance / 100)"
    }
}
