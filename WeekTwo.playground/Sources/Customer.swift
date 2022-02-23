import Foundation

public class Customer {
    
    // MARK: - Properties
    
    private let id: Int
    private var name: String
    private var address: String
    private var phoneNumber: String
    private var accounts: [Account]? = []
    
    
    // MARK: - Initializers
    public init(id: Int, name: String, address: String, phoneNumber: String, accounts: [Account]? = []) {
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
                    return String(item.accountBalance)
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
        return "Your withdrawal of \(amount) is Successful, new balance is now \(currentBalance)"
    }
    
    public func deposit(account: Account, amount: Int) -> String {
        var currentBalance = account.accountBalance
        guard amount > 0 else {
            return "You can't deposit #0"
        }
        currentBalance += amount
        return "Your deposit of \(amount) is Successful, new balance is now \(currentBalance)"
    }
    
    public func openAccount(accountType: AccountType) -> [Account]? {
        switch accountType {
        case .savings:
            let newAccount = SavingsAccount(id: 0111352776, customerId: id, interestRate: 0.10)
            self.accounts?.append(newAccount)
            return self.accounts
        case .current:
            let newAccount = CurrentAccount(id: 2333379, customerId: id, interestRate: 0.05)
            self.accounts?.append(newAccount)
            return self.accounts
            
        }
        
    }
    
    public func closeAccount(accountType: AccountType) -> [Account]? {
        switch accountType {
        case .savings:
            self.accounts?.remove(at: 1)
            return self.accounts
        case .current:
            self.accounts?.remove(at: 2)
            return self.accounts
            
        }
    }
}
// MARK: - Enums
public enum AccountType {
    case savings
    case current
}