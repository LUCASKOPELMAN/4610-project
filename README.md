# Team 5 Mist 4610 Group Project 1

Members:
- Lucas Kopelman
-  Amanda Nolan [@atn10636](https://github.com/atn10636)
-  Allie Rose 
-  Aarav Patel
-  Saianagha Attili

# Problem Description
The task at hand is to design and implement a relational database that accurately models the core functions of a doctor’s office management system. The goal of this project is to create a structured and efficient way to store, retrieve, and manage patient records, doctor information, medical treatments, prescriptions, insurance details, and appointments.
The doctor’s office system handles a variety of operations, including patient check-ins, medical diagnoses, treatment plans, prescriptions, and insurance claims processing. The database is designed to streamline data management, reduce redundancy, and improve access to patient care records while ensuring accuracy and integrity.

# Data Model Description
In this project, we are modeling a doctor’s office environment where patients receive medical care from doctors, undergo treatments, and maintain health records. The office also collaborates with insurance providers to process patient coverage and medical expenses. Key entities in our model include patients, doctors, prescriptions, treatments, diseases, insurance policies, and appointments. 

- Treatments and Medications are linked to diseases, allowing doctors to prescribe the necessary treatments to manage patient conditions.
- Prescriptions track the medications prescribed to each patient, including dosage and frequency.
- Insurance Providers and Policies help in managing billing and financial transactions related to hospital services.
  
The Patients table has a many to many relationship with the Doctors table as patients can have many doctors, and doctors can have many patients. This association is done through the Appointments table, which assigns a doctor to a patient for an appointment. Patients are the core of the system and have unique records containing their personal details, medical history, and insurance policies. Doctors provide medical care, diagnose diseases, and prescribe medications to patients. Each doctor has a specialization and a contact record. Appointments are scheduled between patients and doctors to manage visits and medical consultations.
Each patient has one medical record and each medical record can only belong to one patient so the tables have a one to one relationship. Medical Records maintain the diagnoses, prescribed medications, and diseases related to each patient.

Our data model supports patient health records, doctor details, appointments, insurance policies, prescriptions and treatments. Our data model does not support real time medical monitoring data such as heart rate or blood pressure, office administrative operations such as payroll or billing, and patient feedback on treatment experiences. 


# Image of our Data Model

![unnamed](https://github.com/user-attachments/assets/f82564a3-062d-40c3-a8f9-9e6e3defea72)

# Data Dictionary
<img width="806" alt="Image" src="https://github.com/user-attachments/assets/7674a476-662a-4405-a7ff-528a1f0d9454" />

<img width="810" alt="Image" src="https://github.com/user-attachments/assets/3735ab26-7475-4475-9686-3bb4355fc042" />

<img width="814" alt="Image" src="https://github.com/user-attachments/assets/2ce472b9-9b42-4847-90a3-ef23c072840f" />

<img width="816" alt="Image" src="https://github.com/user-attachments/assets/1624a806-546e-4fe2-b668-db8be06d2967" />

<img width="814" alt="Image" src="https://github.com/user-attachments/assets/09737c64-7c99-46e7-ac5c-be42ff13a390" />

<img width="805" alt="Image" src="https://github.com/user-attachments/assets/0b731c00-32a8-419c-9306-b6ad0402264f" />

<img width="794" alt="Image" src="https://github.com/user-attachments/assets/3e2a7490-3464-4694-aad6-dd00815a9ca8" />

<img width="817" alt="Image" src="https://github.com/user-attachments/assets/813fe69d-eea9-4edc-bab3-1b83f5b05235" />

<img width="805" alt="Image" src="https://github.com/user-attachments/assets/417bf8a1-831e-46d5-bc22-86b55dc3d7eb" />

<img width="809" alt="Image" src="https://github.com/user-attachments/assets/091f1235-3f08-4fec-a64f-4282e24c61dc" />

<img width="798" alt="Image" src="https://github.com/user-attachments/assets/bf58077c-cc5c-4bc1-822e-cfa29022f900" />

# Queries 

<img width="687" alt="Screenshot 2025-03-18 at 2 56 54 PM" src="https://github.com/user-attachments/assets/4fe906ac-de7b-4034-b3fd-b66070bc8538" />


1.  Query 1 description: allows a user to list doctors with their specialization and years of experience.

<img width="913" alt="Screenshot 2025-03-17 at 3 43 35 PM" src="https://github.com/user-attachments/assets/90ed8a08-ef14-43ba-a9d2-8463d12bf3fc" />

- Query 1 justification: This query could be used when an individual wants to find an experienced doctor for a specific specialty. Because it sorts the doctors by year of experience descending, the first doctor returned will be the most experienced. This could be used in a case where someone with vast background knowledge is needed for a specific condition.

2. Query 2 description: allows a user to find the total number of prescriptions issued per patient.

<img width="763" alt="Screenshot 2025-03-18 at 2 58 46 PM" src="https://github.com/user-attachments/assets/87ef08c0-5bfa-442f-be2d-9efd30f0eefb" />

- Query 2 justification: This query would be helpful in a case where a doctor needs to know how many medications a patient is currently prescribed before prescribing a new one. Addtionally, tracking how many medications a patient is presribed to helps detect if a patient is taking multiple medications, increasing risks of drug interactions and side effects. 


3. Query 3 description: gets all past appointments scheduled before the current date.

<img width="613" alt="Screenshot 2025-03-17 at 5 15 25 PM" src="https://github.com/user-attachments/assets/b9f76d82-b0fb-4ee1-ab4c-b43fb589635c" />

- Query 3 justification: Hospitals need to know all past appointments to keep track of patient history and make sure they get proper care. It helps doctors see what treatments/check-ups a patient has already had, so they don’t repeat tests or miss important follow-ups. It also helps with scheduling, spotting missed appointments, and understanding patient needs over time. Plus, past appointments are useful for billing, insurance claims, and keeping medical records accurate. Without this information, it would be harder to give the best care and keep everything organized.

4. Query 4 description: finds patients with the highest insurance policies.

<img width="1043" alt="Screenshot 2025-03-18 at 3 00 32 PM" src="https://github.com/user-attachments/assets/7856e610-0d34-4e8c-bc9a-7d465b6ff219" />

- Query 4 justification: This query would be helpful to aid in finding patients with good insurance coverage, which helps ensure that our facility gets paid, improving financial sustainability. 

5. Query 5 description: allows a user to list doctors who have seen more than the average number of patients.

<img width="699" alt="Screenshot 2025-03-18 at 3 03 55 PM" src="https://github.com/user-attachments/assets/c85527f7-17f4-4578-8e63-24d48fb2ce51" />

- Query 5 justification: This query would be useful when a manager is looking to find doctors that see a particularly high number of patients. Also, if a doctor requests to see more or less patients, this query can be used as a benchmark to see which doctors already have a full workload.

6. Query 6 description: finds Patients Diagnosed with a Specific Disease (in this case, asthma).

<img width="748" alt="Screenshot 2025-03-17 at 5 12 59 PM" src="https://github.com/user-attachments/assets/e081e46f-53d2-4aeb-a6b6-bbbb5f3c9bfa" />

- Query 6 justification: Hospitals need to know which patients have a certain disease so they can give them the right care. It helps doctors keep track of who needs treatment, follow-ups, or special attention. It also makes sure the hospital has enough medicine and equipment for those patients. Plus, knowing this can help spot outbreaks and find better ways to treat the disease- for research purposes. Without this info, it would be harder to make sure patients get the right care when they need it.

7. Query 7 description: lists patients that have been diagnosed with either anxiety or depression, along with information pertaining to the next scheduled or most recent appointment.

![image](https://github.com/user-attachments/assets/53c0eb41-4702-4e20-a0b1-63bef7310b0b)

- Query 7 justification: A manager would use information from this query to ensure patients with mental illnesses are being regularly seen by doctors in the office. This is an important feature because certain diagnoses, such as mental illnesses, require different and specialized care from the doctor's office. If the manager notices a patient hasn't been seen in an extended period of time, they could notify a doctor to reach out to the patient.

8. Query 8 description: finds doctors who have treated patients with diseases categorized as “severe”

<img width="816" alt="Screenshot 2025-03-18 at 3 05 26 PM" src="https://github.com/user-attachments/assets/3e67cacd-05b8-4019-b8fa-61d1a7dbb1b9" />

- Query 8 justification:  Doctors who have treated severe cases likely have specialized knowledge and expertise in managing complex diseases. Patients with severe conditions benefit from being treated by doctors with a strong track record in handling similar cases. Matching patients with experienced providers increases the chances of accurate diagnoses and effective treatment plans.


9. Query 9 description: retrieves insurance providers, the number of patients served and the average premium of their policies.

<img width="884" alt="Screenshot 2025-03-17 at 4 20 02 PM" src="https://github.com/user-attachments/assets/852001c0-4a5f-4c00-b6d0-500de259f244" />

- Query 9 justification: This query is useful for determining which insurance providers are the most popular amongst patients and how much patients pay for their plans. This gives the hospital better support for business decisions, such as which providors should be supported.

10. Query 10 description: lists first and last names of patients born before 1985 that have scheduled a visit since 2023. along with the name of their insurance provider.

![image](https://github.com/user-attachments/assets/7518c36c-43e5-4c19-b7da-c01b0a917de4)

- Query 10 justification: This query is important to managers at it showcases a more complex search parameter. The information returned by this query would likely be used by a manager to determine which healthcare providers the office's current/recent patients are using. This information could help determine which providers include this office in their coverage policies.
