import Debug "mo:base/Debug"; // this a libary for debugging only (not in the final version) 

actor DBank {
var currentValue = 300; 
let id = 22355555565;
currentValue := 100; // := means change value 300 to 100


public func topUp(amount: Nat)  {
  currentValue += amount;
Debug.print(debug_show(currentValue));

};

public func withdraw(amount: Nat)  {
  let tempValue: Int  = currentValue - amount;
  if (tempValue >= 0) {
    currentValue -= amount;
  Debug.print(debug_show(currentValue));
  }else {
    Debug.print("Not enough money");
  }
};
public query func checkbalanc(): async Nat {
return currentValue;
};
}