class BankAccount: 
    total_accounts = 0
    total_balance = 0
    
    def __init__(self, name, balance) -> None:
        self.name = name
        self.balance = balance
        BankAccount.total_accounts+=1
        BankAccount.total_balance+=balance


ac1 = BankAccount("Alice",1000)
ac2 = BankAccount("Bob",2000)

print(f"{ac1.name}'s balance: ${ac1.balance}")
print(f"{ac2.name}'s balance: ${ac2.balance}")
print(f"Total Accounts: {BankAccount.total_accounts}")
print(f"Total Balance: ${BankAccount.total_balance}")