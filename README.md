## Software Engineering Project - NSU Complain Portal

### ‘NSU Complain Portal’ is a software where a NSU Student/Faculty can complain against anyone who is also a NSUer. 

- Language: Django, HTML, CSS, Bootstrap, JS

- System Feature:

1. Signup (Must NSU email, Scan Pic of ID card)
2. Google Signup
3. Sign in
4. Lodging Complain
5. Email sent after successful complaint submission
6. System Admin (Add reviewer, Edit or Delete the Complain)
7. Contact Section
8. Logout



- Registration:

Users must have to register to enter the homepage. System will check if the email is NSU edu mail or not. Users can’t register without NSU mail. Users can’t register with the same Username or same Email which were registered before. Scan NSU ID card must be submitted while registering. Google Signup is also added. 

- Profile:

System will fetch the data from the Register section & show user specific data on the Profile Section. Scan pic of ID card card will be displayed on Profile pic. 

- Complain:

Main Part of the system where users can lodge multiple complaints. Users must submit the person's valid username against whom they are lodging a complaint. When making a complaint, users must provide genuine evidence or proof. Users are not allowed to file a complaint against themselves. The complaint can be edited or deleted by users. Short description about users' complaints will be shown below. In the 'Observation' area, the reviewer's comment for that complaint will be displayed.

- Admin panel:

The default Django admin panel shows the list of authorized users as well as all complaints. Admin has the right to modify or delete the complaint as he thinks fit. Admins provide the comments on any complaint, and such comments will display in the user's observation area.
