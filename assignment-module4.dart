abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double ammount) {
    this.balance += ammount;
    print('Deposit: $ammount BDT');
    print('Current Balance: ${this.balance} BDT');
  }

  void withdraw(double ammount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double ammount) {
    if (ammount <= this.balance) {
      this.balance -= ammount;
      this.balance += this.balance * interestRate;
      print('Withdrawn: $ammount BDT');
      print('Current Balance: ${this.balance} BDT');
    } else {
      print('Insufficient Funds!');
    }
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;
  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double ammount) {
    if (ammount <= this.balance + this.overdraftLimit) {
      this.balance -= ammount;
      print('Withdrawn: $ammount BDT');
      print('Current Balance: ${this.balance} BDT');
    } else {
      print('Insufficient Funds!');
    }
  }
}

void main(List<String> args) {
  SavingsAccount my_savings_account = new SavingsAccount(614023, 1000, 1);
  my_savings_account.deposit(500);
  my_savings_account.withdraw(700);
  print('');
  CurrentAccount my_current_account = new CurrentAccount(234879, 2000, 500);
  my_current_account.deposit(1000);
  my_current_account.withdraw(1500);
}
