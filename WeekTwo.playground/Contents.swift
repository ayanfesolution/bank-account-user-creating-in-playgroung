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

// Start your solution from here...
var greeting = "Hello, playground"
