"# java_legendCinemaY3S2" 
"# CinemaProject" 
# java_legendCinemaY3S2
# CinemaProject

## Note:
This project system has been created solely for staff use in selling tickets. Imagine the real-life scenario of going to the cinema, where you stand in line and staff assist you by selecting seats and selling tickets.

## Build With:
- Java Swing
- Java JDK 21
- Docker
- MySQL

## Getting Started:
### Running
If you want to start our application, please run the main file named "Cinema.java".

### Step 1: Authentication
- Username: admin
- Password: admin
- This authentication helps detect which staff member is receiving the order and money or making the booking, ensuring we can identify any abnormal activity and ensure system safety, accessible only to staff members. Currently, we are testing with the admin account in this project.

### Step 2: Picking Seat
- Our application can run a .jar file on multiple computers in a workstation (cinema) at the same time.
- Staff can select more than one seat on each computer.
- If a seat has been selected, other computers used by other staff cannot select it because it is pending. If they try to pick that seat, a dialog message box will show, stating "Seat is busy."
- However, other computers are still allowed to select seats that are different from the pending seat. Logically, if the first computer has selected a seat, there is no need for the second computer to wait for the first computer to end the process. We have already addressed this issue.
- After finishing picking the seat, click on "Order" to continue.

### Step 3: Payment
- Staff will see a pop-up of the total payment in a text field.
- Staff can pick different discounts.
- The discount price will be automatically calculated based on the different percentages and total amounts. It will then show the total price the customer should pay. This helps prevent confusion between staff and customers.
- Next, we have an input box where staff can enter the amount received from the customer. If the amount is lower than the total price, the return value will be negative, and the pay button will be locked.
- If the amount received is equal to or greater than the total price, we can see the return to know how much we should return to the customer. The pay button will then allow payment.

## Additional Information
- Free seats will be displayed in red as usual, and pending seats will also appear in red on other computers.
- When a seat is being selected, its color will change to green, and a tick mark will appear in the middle of the seat icon to indicate that it is being picked.
- When a seat is sold out, its color will change to gray. After a successful order, the seat will become unavailable and show as gray on both the current and other computers to prevent staff from attempting to select seats that have already been sold out unknowingly.

### Step 4: Receipt
- After successfully booking the seat, staff will print the receipt on paper for the customer. Currently, due to the lack of a printer, it will only be possible to print it as a PDF file.
- In the receipt, it will show:
  - Include the logo on the report.
  - The name of the staff who sold the ticket.
  - The date and time when the receipt was created.
  - Details: It will show the seat number that was purchased and each price.
  - Payment details: It will display the total price, the discount percentage and amount, the amount the customer should pay, the amount received, and the change due (if applicable).

### Step 5: Booking
- Users can also book tickets by clicking the booking button, where they need to input their phone number. They can then pick a seat and book it with their phone number.
-	After that, users can check in for their booked ticket by clicking on the "Check In" button. They just need to enter their phone number to verify their booking.
-	If the phone number has a booking in our system, it will be displayed on the screen.
-	The seat will change color to siliver to noted as the seat has been booking
