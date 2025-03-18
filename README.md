# Team 5 Mist 4610 Group Project 1

Members:
- Lucas Kopelman
-  Amanda Nolan
-  Allie Rose
-  Aarav Patel
-  Saianagha Attili

# Problem Description
The task at hand is to design and implement a relational database that accurately models the core functions of a doctor’s office management system. The goal of this project is to create a structured and efficient way to store, retrieve, and manage patient records, doctor information, medical treatments, prescriptions, insurance details, and appointments.
The doctor’s office system handles a variety of operations, including patient check-ins, medical diagnoses, treatment plans, prescriptions, and insurance claims processing. The database is designed to streamline data management, reduce redundancy, and improve access to patient care records while ensuring accuracy and integrity.

# Data Model

# Image of our Data Model

![unnamed](https://github.com/user-attachments/assets/f82564a3-062d-40c3-a8f9-9e6e3defea72)

# Data Dictionary
<img width="806" alt="Image" src="https://github.com/user-attachments/assets/7674a476-662a-4405-a7ff-528a1f0d9454" />

<img width="810" alt="Image" src="https://github.com/user-attachments/assets/3735ab26-7475-4475-9686-3bb4355fc042" />

# Queries 

1. Query 1 allows a user to list doctors with their specialization and years of experience.

<img width="913" alt="Screenshot 2025-03-17 at 3 43 35 PM" src="https://github.com/user-attachments/assets/90ed8a08-ef14-43ba-a9d2-8463d12bf3fc" />

- This query could be used when an individual wants to find an experienced doctor for a specific specialty. Because it sorts the doctors by year of experience descending, the first doctor returned will be the most experienced. This could be used in a case where someone with vast background knowledge is needed for a specific condition.

2.

3. Query 3 gets all past appointments scheduled before the current date.

<img width="613" alt="Screenshot 2025-03-17 at 5 15 25 PM" src="https://github.com/user-attachments/assets/b9f76d82-b0fb-4ee1-ab4c-b43fb589635c" />

- Hospitals need to know all past appointments to keep track of patient history and make sure they get proper care. It helps doctors see what treatments/check-ups a patient has already had, so they don’t repeat tests or miss important follow-ups. It also helps with scheduling, spotting missed appointments, and understanding patient needs over time. Plus, past appointments are useful for billing, insurance claims, and keeping medical records accurate. Without this information, it would be harder to give the best care and keep everything organized.

4.

5.

6. Query 6 finds Patients Diagnosed with a Specific Disease (in this case, asthma)

<img width="748" alt="Screenshot 2025-03-17 at 5 12 59 PM" src="https://github.com/user-attachments/assets/e081e46f-53d2-4aeb-a6b6-bbbb5f3c9bfa" />

- Hospitals need to know which patients have a certain disease so they can give them the right care. It helps doctors keep track of who needs treatment, follow-ups, or special attention. It also makes sure the hospital has enough medicine and equipment for those patients. Plus, knowing this can help spot outbreaks and find better ways to treat the disease- for research purposes. Without this info, it would be harder to make sure patients get the right care when they need it.

7. Query 7 lists patients that have been diagnosed with either anxiety or depression, along with information pertaining to the next scheduled or most recent appointment.

![image](https://github.com/user-attachments/assets/53c0eb41-4702-4e20-a0b1-63bef7310b0b)

- A manager would use information from this query to ensure patients with mental illnesses are being regularly seen by doctors in the office. This is an important feature because certain diagnoses, such as mental illnesses, require different and specialized care from the doctor's office. If the manager notices a patient hasn't been seen in an extended period of time, they could notify a doctor to reach out to the patient.

8.


9. Query 9 retrieves insurance providers, the number of patients served and the average premium of their policies.

<img width="884" alt="Screenshot 2025-03-17 at 4 20 02 PM" src="https://github.com/user-attachments/assets/852001c0-4a5f-4c00-b6d0-500de259f244" />

- This query is useful for determining which insurance providers are the most popular amongst patients and how much patients pay for their plans. This gives the hospital better support for business decisions, such as which providors should be supported.

10. Query 10 lists first and last names of patients born before 1985 that have scheduled a visit since 2023. along with the name of their insurance provider.

![image](https://github.com/user-attachments/assets/7518c36c-43e5-4c19-b7da-c01b0a917de4)

- This query is important to managers at it showcases a more complex search parameter. The information returned by this query would likely be used by a manager to determine which healthcare providers the office's current/recent patients are using. This information could help determine which providers include this office in their coverage policies.
