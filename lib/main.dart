import 'dart:developer';
import 'dart:io';

void main(){
double userBalance=1000.00;
print ("Welcome ♥♥🤗");
int pin=2821;
  for (int i = 0; i < 3; i++) {
    print("Enter your PIN: ");
   int pin1=int.tryParse(stdin.readLineSync());
   if (pin1==pin){
     print("Access granted! 🤗\n");
    break;
   }
   else if (i==2 && pin1!=pin){
            print (r"I'm sorry you didn't enter the correct pin.😥♥♥♥");
        return ;
   } 
   else {
      print("Incorrect PIN😥. Try again♥♥.\n");
    }
  }
  for (; true;) {
    print("What do you want to do🤗?");
    print("1. Deposit😊");
    print("2. Withdraw🤝🤝");
    print("3. Check Balance😊");
    print("4. Exit🏃🏻🏃🏻");
    print("Enter your choice💖: ");
      int userChoice=int.tryParse(stdin.readLineSync());
      bool deposit, withdraw, exit,inquire;
      deposit=userChoice==1;
      withdraw=userChoice==2;
      exit=userChoice==4;
      inquire=userChoice==3;


      //------Deposit------//
      if (deposit) {

        print("Enter the amount to deposit♥:");
       
        double userdeposit=double.tryParse(stdin.readLineSync());
         if(userdeposit != null && userdeposit > 0){
          userBalance += userdeposit;
          print("You made a deposit of ${userdeposit.toStringAsFixed(2)}\$ and your balance is ${userBalance.toStringAsFixed(2)}\$");
          }else {
            print("Invalid amount. Please enter a positive number💖.\n");
          }

      }
      
      
      //------Withdraw------//
       else if(withdraw){
        print("Enter the amount to withdraw♥: ");
        double userwithdraw=double.tryParse(stdin.readLineSync());
        if (userwithdraw != null && userwithdraw > 0) {
          if (userwithdraw<=userBalance) {
          userBalance -= userwithdraw;
          print ("I have withdrawn ${userwithdraw.toStringAsFixed(2)}\$ and the remaining is ${userBalance.toStringAsFixed(2)}\$ 🤗"); 
        }else{
          print("Insufficient funds😥😥. Your balance is \$${userBalance.toStringAsFixed(2)}.\n");
        }
        }
      else{
        print ("Invalid amount. Please enter a positive number💖.");
      }
      }


      //------Check Balance------//
      else if(inquire){
        print("Your Balance is: ${userBalance.toStringAsFixed(2)}\$♥");
      }


      //------Exit------//
      else if (exit){
        print ("♥♥♥Thank You for using our banking app!♥♥♥");
        return ;
      }
      else{
        print (" Invalid choice. Please select a number from 1 to 4. 💖");
      }

  }



}