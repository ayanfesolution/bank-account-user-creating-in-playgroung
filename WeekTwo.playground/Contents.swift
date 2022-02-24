//: ## Week Two iOS Task
//:
//: ### Problem Description
//:
//: The task is to model a traditional BANK having a Bank account, a Bank customer object using OOP.
//:
//:  - Bank Account: A financial account maintained by the bank. For our implementation, we would be limiting bank account type to
//:
//:    - Savings Account
//:
//:    - Current Account
//:
//:  - Bank Customer: An individual that owns an account with the bank.
//:
//: ### How will I complete this project?
//:
//: - Bank Account: Create a class Account with properties:
//:
//:  - id(Int)
//:
//:  - customerId(Int)
//:
//:  - accountBalance (Int)
//:
//:  - interestRate(Double).
//:
//: #### The Account class should have the following methods:
//:
//: - withdrawal:  A method that takes amount(Int) as parameters; performs reduction on the account and returns the new account balance(String).
//:
//: - deposit: A method that takes amount(Int) as parameters; performs increment on the account balance and returns the new account balance(String).
//:
//: - charge: A method that reduces the account balance by 100naira and returns the new account balance (String).
//:
//: - bonus: A method that increases the account balance by 10 naira and returns the new account balance(String).
//:
//: #### Savings Account: Create a class SavingsAccount that inherit Account class and does the following:
//:
//: - Override the interest rate property and set it to 10 percent.
//:
//: - Override the deposit method from account class; the method would call the bonus method after every deposit.
//:
//: #### Current Account: Create a class CurrentAccount that inherit Account class and does the following:
//:
//: - Override the interest rate property and set it to 5percent.
//:
//: - Override the withdrawal method from account class; the method would call the charge method after every withdrawal.
//:
//:
//: #### Bank Customer: Create a class named Customer with properties:
//:
//: - id (Int),
//:
//: - name (String)
//:
//: - address (String)
//:
//: - phoneNumber (String)
//:
//: - an optional account ([Account]?).
//:
//: #### The Customer class should have the following methods:
//:
//: - accountBalance: A method that takes an account(Account) as parameter and returns the account balance(String).
//:
//: - withdrawal:  A method that takes an account(Account) and amount(Int) as parameters; performs a reduction on the account and returns the new account balance(String).
//:
//: - deposit: A method that takes an account(Account) and amount(Int) as parameters; performs an increment on the account and returns the new account balance(String).
//:
//: - openAccount: A method that takes account type(AccountType) as parameter; creates the type of account; appends the new account to the accounts property and returns the accounts([Account]) property.
//:
//: - closeAccount: A method that takes in an account as parameter; removes the new account from the accounts property and returns the accounts property([Account]).
//:
//: - Create a getter and setter for all properties in the customer class.
//:
//: #### Account Type: Create an Enum with case savings and current
//:
//: _Steps to evaluate_
//:
//: - Successfully Created a Customer object
//: - Successfully Created a savings account object for customer
//: - Successfully Created a current account object for customer
//:
//: > Perform all methods on customer object and confirm if the returned result is the expected result.
//:
//: > Point out where you applied the pillars of OOP.
//:
//: **NOTE**
//:   Please make use of XCode playground to complete task.
//:
//:   All types that refer to money (amount, account balance) in the task should be an integer and should represent Nigerian kobo. If you want to represent 100 naira it should be 10000 kobo.
//:
//:   Endeavour to convert back to naira when printing result..
import UIKit
import Foundation

// Start your solution from here...


//Creating A Demo Account with Class Account
// MARK: - Checking out the properties and methods in Account Class
var account1 : Account = Account(id: 0001, customerId: 0111352776)
print("\nChecking out the properties and methods in Account Class \n\(account1.accountBalance)")
//Trying to deposit #0
print(account1.deposit(0))
//Trying to deposit money
print(account1.deposit(100_000_00))
//Trying to call the bonus method
print(account1.bonus())
//Trying to withdraw more than the account balance
print(account1.withdrawal(2000000000))
// Withdrawing from the Account
print(account1.withdrawal(100000))
// calling the function of charge
print(account1.charge())

//Creating A Demo Account with Class Account
// MARK: - Checking out the properties and methods in SavingAccount Class
var account2 : SavingsAccount = SavingsAccount(id: 0001, customerId: 0113255673)
print("\nChecking out the properties and methods in SavingAccount Class \n\(account2.accountBalance)")
//Trying to deposit #0
print(account2.deposit(0))
//Trying to deposit money
print(account2.deposit(100_000_00))
//Trying to call the bonus method
print(account2.bonus())
//Trying to withdraw more than the account balance
print(account2.withdrawal(2000000000))
// Withdrawing from the Account
print(account2.withdrawal(100000))
// calling the function of charge
print(account2.charge())



// MARK: - Checking out the properties and methods in CurrentAccount Class

var account3 : CurrentAccount = CurrentAccount(id: 0001, customerId: 0117879900)
print("\nChecking out the properties and methods in CurrentAccount Class \n\(account3.accountBalance)")
//Trying to deposit #0
print(account3.deposit(0))
//Trying to deposit money
print(account3.deposit(100_000_00))
//Trying to call the bonus method
print(account3.bonus())
//Trying to withdraw more than the account balance
print(account3.withdrawal(2000000000))
// Withdrawing from the Account
print(account3.withdrawal(100000))
// calling the function of charge
print(account3.charge())
//customer1: Customer = Customer


// MARK: -Let us assumed that account1, account2, account3 belongs to a client1 whose name is Ayanfe Afolabi
let client1: Customer = Customer(id: account1.id, name: "Afolabi Ayanfe", address: "Edo", phoneNumber: "0695494", accounts: [account1,account2, account3])

client1.accounts
// MARK: - Testing for checking of account balance of customers
print(client1.accounts!)
print(client1.accountBalance(account1))
print(client1.accountBalance(account2))
print(client1.accountBalance(account3))
//MARK: - Testing for withdrawing of money from all accounts of Ayanfe Afolabi
print(client1.withdrawal(account: account1, amount: 1000000))
print(client1.withdrawal(account: account2, amount: 1000000))
print(client1.withdrawal(account: account3, amount: 1000000))
//MARK: - Testing for depositing of money from all accounts of Ayanfe Afolabi
print(client1.deposit(account: account1, amount: 3000000))
print(client1.deposit(account: account2, amount: 3000000))
print(client1.deposit(account: account3, amount: 3000000))
//MARK: - Testing opening of new account for Ayanfe Afolabi
client1.openAccount(accountType: .savings)
client1.accounts![3]
//MARK: - Testing closing of new account for Ayanfe Afolabi
client1.closeAccount(accountType: .savings)
