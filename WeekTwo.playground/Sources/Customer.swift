import Foundation

public class Customer {
    
    // MARK: - Properties
    
    public let id: Int
    public var name: String
    public var address: String
    public var phoneNumber: String
    public var accounts: [Account]?
    
    
    // MARK: - Initializers
    public init(id: Int, name: String, address: String, phoneNumber: String, accounts: [Account]) {
        self.id = id
        self.name = name
        self.address = address
        self.phoneNumber = phoneNumber
        self.accounts = accounts
    }
    
    
    //MARK: - Methods
    public func accountBalance(_ account: Account) -> String {
        if let accounts = self.accounts {
            for item in accounts {
                if item === account {
                    return "Your account balance from acct no \(account.customerId) is #\(String(item.accountBalance/100))"
                }
            }
        }
        return "No Account owned by customer"
    }
    
    public func withdrawal(account: Account, amount: Int) -> String {
        var currentBalance = account.accountBalance
        
        guard amount < currentBalance else {
            return "Insuffienct Account balance"
        }
        currentBalance -= amount
        return "Your withdrawal of #\(amount / 100) is Successful from acct no \(account.customerId), new balance is now #\(currentBalance / 100)"
    }
    
    public func deposit(account: Account, amount: Int) -> String {
        var currentBalance = account.accountBalance
        guard amount > 0 else {
            return "You can't deposit #0"
        }
        currentBalance += amount
        return "Your deposit of #\(amount / 100) is Successful from acct no \(account.customerId), new balance is now #\(currentBalance / 100)"
    }
    
    public func openAccount(accountType: AccountType) -> [Account]? {
        switch accountType {
        case .savings:
            let newAccount = SavingsAccount(id: id, customerId: 0113789032, interestRate: 0.10)
            self.accounts?.append(newAccount)
            return self.accounts
        case .current:
            let newAccount = CurrentAccount(id: id, customerId: 0113789445, interestRate: 0.05)
            self.accounts?.append(newAccount)
            return self.accounts
        }
    }
    
    public func closeAccount(accountType: AccountType) -> [Account]? {
        switch accountType {
        case .savings:
            self.accounts?.removeLast()
            return self.accounts
        case .current:
            self.accounts?.removeLast()
            return self.accounts
        }
    }
}

// MARK: - Enums
public enum AccountType {
    case savings
    case current
}
