/*:
## Exercise - Compound Assignment
 
 Declare a variable whose value begins at 10. Using addition, update the value to 15 using the compound assignment operator. Using multiplication, update the value to 30 using compound assignment. Print out the variable's value after each assignment.
 */
var value = 10
print("Initial value is \(value)")

value += 5
print("Value after addition is \(value)")

value *= 2
print("Value after multiplication is \(value)")


/*:
 Create a variable called `piggyBank` that begins at 0. You will use this to keep track of money you earn and spend. For each point below, use the right compound assignment operator to update the balance in your piggy bank.
 
- Your neighbor gives you 10 dollars for mowing her lawn
- You earn 20 more dollars throughout the week doing odd jobs
- You spend half your money on dinner and a movie
- You triple what's left in your piggy bank by washing windows
- You spend 3 dollars at a convenience store
 
 Print the balance of your piggy bank after each step.
 */
var piggyBank = 0.0
print("Initial balance: \(piggyBank)")

piggyBank += 10
print("After mowing the lawn: \(piggyBank)")

piggyBank += 20
print("After doing odd jobs: \(piggyBank)")

piggyBank /= 2
print("After spending half on dinner and a movie: \(piggyBank)")

piggyBank *= 3
print("After tripling by washing windows: \(piggyBank)")

piggyBank -= 3
print("After spending at a convenience store: \(piggyBank)")
/*:
[Previous](@previous)  |  page 3 of 8  |  [Next: App Exercise - Counting](@next)
 */
