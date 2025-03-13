INSERT INTO `InsuranceProviders` (providerID, providerName) VALUES
(1, 'UnitedHealth Group'),
(2, 'Anthem Inc.'),
(3, 'Aetna'),
(4, 'Cigna'),
(5, 'Humana');

INSERT INTO `InsurancePolicies` (policyID, policyName, premiumAmount, coverageAmount, deductible, providerID) VALUES
(1, 'Basic Plan', 200.00, 5000.00, 100.00, 1),
(2, 'Silver Plan', 350.00, 10000.00, 150.00, 2),
(3, 'Gold Plan', 500.00, 20000.00, 200.00, 3),
(4, 'Platinum Plan', 700.00, 30000.00, 300.00, 4),
(5, 'Family Plan', 600.00, 25000.00, 250.00, 5);

INSERT INTO `Patients` (patientID, patientFirstName, patientLastName, patientPhoneNumber, patientSex, patientHistory, dateOfBirth, policyID) VALUES
(1, 'John', 'Doe', '555-0001', 'Male', 'Hypertension', '1980-01-15', 1),
(2, 'Jane', 'Smith', '555-0002', 'Female', 'Asthma', '1990-02-20', 2),
(3, 'Robert', 'Johnson', '555-0003', 'Male', 'Diabetes', '1975-03-10', 3),
(4, 'Emily', 'Davis', '555-0004', 'Female', 'High Cholesterol', '1985-04-25', 4),
(5, 'Michael', 'Brown', '555-0005', 'Male', 'None', '1995-05-30', 5),
(6, 'Sarah', 'Miller', '555-0006', 'Female', 'Migraines', '1988-06-12', 1),
(7, 'William', 'Wilson', '555-0007', 'Male', 'None', '1978-07-18', 2),
(8, 'Jessica', 'Moore', '555-0008', 'Female', 'Anxiety', '1992-08-22', 3),
(9, 'David', 'Taylor', '555-0009', 'Male', 'Arthritis', '1965-09-09', 4),
(10, 'Laura', 'Anderson', '555-0010', 'Female', 'Depression', '1970-10-16', 5),
(11, 'Brian', 'Thomas', '555-0011', 'Male', 'Asthma', '1982-11-05', 1),
(12, 'Ashley', 'Jackson', '555-0012', 'Female', 'Migraines', '1986-12-21', 2),
(13, 'Kevin', 'White', '555-0013', 'Male', 'High Cholesterol', '1993-01-30', 3),
(14, 'Amanda', 'Harris', '555-0014', 'Female', 'Diabetes', '1996-02-14', 4),
(15, 'Matthew', 'Martin', '555-0015', 'Male', 'None', '1989-03-08', 5),
(16, 'Nicole', 'Thompson', '555-0016', 'Female', 'Hypertension', '1977-04-11', 1),
(17, 'Joshua', 'Garcia', '555-0017', 'Male', 'Arthritis', '1968-05-25', 2),
(18, 'Stephanie', 'Martinez', '555-0018', 'Female', 'None', '1991-06-03', 3),
(19, 'Christopher', 'Robinson', '555-0019', 'Male', 'Asthma', '1984-07-19', 4),
(20, 'Megan', 'Clark', '555-0020', 'Female', 'Anxiety', '1997-08-07', 5),
(21, 'Daniel', 'Rodriguez', '555-0021', 'Male', 'Depression', '1983-09-15', 1),
(22, 'Rachel', 'Lewis', '555-0022', 'Female', 'Migraines', '1979-10-28', 2),
(23, 'Andrew', 'Lee', '555-0023', 'Male', 'Hypertension', '1994-11-30', 3),
(24, 'Olivia', 'Walker', '555-0024', 'Female', 'Diabetes', '1987-12-09', 4),
(25, 'Justin', 'Hall', '555-0025', 'Male', 'Asthma', '1990-01-17', 5);

INSERT INTO `Doctors` (doctorID, doctorFirstName, doctorLastName, specialization, yearsOfExperience, doctorPhoneNumber) VALUES
(1, 'Gregory', 'House', 'Diagnostics', 20, '555-1001'),
(2, 'Meredith', 'Grey', 'General Surgery', 15, '555-1002'),
(3, 'Derek', 'Shepherd', 'Neurosurgery', 18, '555-1003'),
(4, 'Cristina', 'Yang', 'Cardiology', 12, '555-1004'),
(5, 'Miranda', 'Bailey', 'Pediatrics', 22, '555-1005'),
(6, 'Mark', 'Sloan', 'Plastic Surgery', 17, '555-1006'),
(7, 'Alex', 'Karev', 'Pediatrics', 10, '555-1007'),
(8, 'Richard', 'Webber', 'General Medicine', 30, '555-1008'),
(9, 'Arizona', 'Robbins', 'Orthopedics', 11, '555-1009'),
(10, 'Amelia', 'Shepherd', 'Neurosurgery', 14, '555-1010');

INSERT INTO `MedicalRecords` (recordID, diagnoses, medications, patientID) VALUES
(1, 'Hypertension', 'Lisinopril', 1),
(2, 'Asthma', 'Albuterol', 2),
(3, 'Diabetes', 'Metformin', 3),
(4, 'Migraines', 'Sumatriptan', 6),
(5, 'Arthritis', 'Ibuprofen', 9),
(6, 'Seasonal Allergies', 'Cetirizine', 4),
(7, 'Chronic Bronchitis', 'Prednisone', 5),
(8, 'Coronary Artery Disease', 'Atorvastatin', 7),
(9, 'Chronic Kidney Disease', 'Losartan', 8),
(10, 'Hepatitis C', 'Sofosbuvir', 10);


INSERT INTO `Appointments` (doctorID, patientID, appointmentID, appointmentDate, appointmentTime, appointmentPurpose) VALUES
(1, 1, 1, '2023-01-15', '10:00:00', 'General Checkup'),
(2, 2, 2, '2024-05-20', '14:30:00', 'Asthma Follow-up'),
(3, 3, 3, '2022-08-10', '09:15:00', 'Diabetes Management'),
(4, 4, 4, '2023-12-01', '11:00:00', 'Migraine Consultation'),
(5, 5, 5, '2024-07-22', '15:00:00', 'Arthritis Pain Management'),
(6, 6, 6, '2023-03-05', '16:30:00', 'Hypertension Review'),
(7, 7, 7, '2024-11-18', '08:45:00', 'Routine Physical Exam'),
(8, 8, 8, '2022-09-30', '13:00:00', 'Respiratory Issues'),
(9, 9, 9, '2023-06-21', '10:45:00', 'Diabetes Follow-up'),
(10, 10, 10, '2024-04-12', '09:30:00', 'Specialist Consultation'),
(1, 11, 11, '2023-02-14', '11:15:00', 'General Checkup'),
(2, 12, 12, '2025-01-05', '12:00:00', 'New Patient Consultation'),
(3, 13, 13, '2023-07-08', '10:30:00', 'Chronic Pain Management'),
(4, 14, 14, '2022-05-16', '14:00:00', 'Migraine Consultation'),
(5, 15, 15, '2024-10-23', '15:45:00', 'Follow-up Visit'),
(6, 16, 16, '2023-11-02', '09:00:00', 'Hypertension Check'),
(7, 17, 17, '2024-06-18', '13:15:00', 'Routine Checkup'),
(8, 18, 18, '2023-04-27', '11:30:00', 'Specialist Referral'),
(9, 19, 19, '2022-12-09', '16:00:00', 'Diabetes Follow-up'),
(10, 20, 20, '2024-09-14', '10:15:00', 'Annual Physical Exam'),
(1, 21, 21, '2023-10-05', '08:00:00', 'General Checkup'),
(2, 22, 22, '2025-03-20', '14:30:00', 'Asthma Treatment Review'),
(3, 23, 23, '2022-11-11', '10:45:00', 'Initial Consultation'),
(4, 24, 24, '2024-08-02', '12:15:00', 'Migraine Checkup'),
(5, 25, 25, '2023-01-28', '15:30:00', 'Arthritis Treatment Review');

INSERT INTO `ns_Sp25_21482_Group5`.`Diseases` (`diseaseID`, `diseaseName`, `symptoms`, `severityLevel`) VALUES
(1, 'Hypertension', 'High blood pressure, headaches, dizziness', 'Moderate'),
(2, 'Diabetes Mellitus', 'Increased thirst, frequent urination, hunger', 'Severe'),
(3, 'Asthma', 'Shortness of breath, wheezing, coughing', 'Moderate'),
(4, 'Coronary Artery Disease', 'Chest pain, shortness of breath, fatigue', 'Severe'),
(5, 'Chronic Kidney Disease', 'Fatigue, swollen feet and ankles, shortness of breath', 'Severe'),
(6, 'Migraine', 'Severe headache, nausea, sensitivity to light', 'Mild'),
(7, 'Anxiety Disorder', 'Nervousness, restlessness, rapid heart rate', 'Moderate'),
(8, 'Depression', 'Persistent sadness, lack of interest, fatigue', 'Moderate'),
(9, 'Arthritis', 'Joint pain, stiffness, swelling', 'Moderate'),
(10, 'Obesity', 'Excess body fat, health complications', 'Moderate'),
(11, 'COPD', 'Chronic cough, mucus, difficulty breathing', 'Severe'),
(12, 'Cancer', 'Varies by type, weight loss, fatigue, pain', 'Severe'),
(13, 'Epilepsy', 'Seizures, loss of consciousness', 'Severe'),
(14, 'Alzheimer’s Disease', 'Memory loss, confusion, difficulty speaking', 'Severe'),
(15, 'Parkinson’s Disease', 'Tremors, stiffness, impaired balance', 'Severe'),
(16, 'Lupus', 'Joint pain, skin rashes, fatigue', 'Moderate'),
(17, 'Multiple Sclerosis', 'Vision problems, muscle weakness, balance issues', 'Severe'),
(18, 'HIV/AIDS', 'Weight loss, fever, frequent infections', 'Severe'),
(19, 'Hepatitis B', 'Fatigue, nausea, jaundice', 'Moderate'),
(20, 'Tuberculosis', 'Persistent cough, chest pain, coughing blood', 'Severe'),
(21, 'Gout', 'Sudden severe joint pain, redness, tenderness', 'Moderate'),
(22, 'Psoriasis', 'Skin rash, itching, joint pain', 'Mild'),
(23, 'Irritable Bowel Syndrome', 'Cramping, abdominal pain, bloating', 'Mild'),
(24, 'Celiac Disease', 'Diarrhea, bloating, fatigue', 'Moderate'),
(25, 'Fibromyalgia', 'Widespread pain, fatigue, cognitive issues', 'Moderate'),
(26, 'Anemia', 'Fatigue, weakness, pale skin', 'Mild'),
(27, 'Hyperthyroidism', 'Weight loss, rapid heartbeat, anxiety', 'Moderate'),
(28, 'Hypothyroidism', 'Weight gain, cold intolerance, fatigue', 'Moderate'),
(29, 'Crohn’s Disease', 'Diarrhea, abdominal pain, weight loss', 'Severe'),
(30, 'Ulcerative Colitis', 'Diarrhea with blood, abdominal pain', 'Severe');

INSERT INTO `ns_Sp25_21482_Group5`.`Medications` (`medicationID`, `medicationName`, `manufacturer`, `sideEffects`) VALUES
(1, 'Lisinopril', 'Pfizer', 'Cough, dizziness, headache'),
(2, 'Metformin', 'Merck', 'Nausea, vomiting, stomach upset'),
(3, 'Albuterol', 'GSK', 'Tremors, nervousness, headache'),
(4, 'Atorvastatin', 'Pfizer', 'Muscle pain, diarrhea, cold symptoms'),
(5, 'Omeprazole', 'AstraZeneca', 'Headache, stomach pain, nausea'),
(6, 'Levothyroxine', 'AbbVie', 'Hair loss, sweating, nervousness'),
(7, 'Gabapentin', 'Pfizer', 'Dizziness, fatigue, coordination issues'),
(8, 'Hydrochlorothiazide', 'Teva', 'Dizziness, headache, weakness'),
(9, 'Fluticasone', 'GSK', 'Nasal irritation, headache, nosebleeds'),
(10, 'Sertraline', 'Pfizer', 'Drowsiness, nausea, insomnia'),
(11, 'Carbamazepine', 'Novartis', 'Drowsiness, dizziness, nausea'),
(12, 'Levodopa', 'Roche', 'Nausea, dizziness, confusion'),
(13, 'Methotrexate', 'Teva', 'Nausea, fatigue, mouth sores'),
(14, 'Interferon beta-1a', 'Biogen', 'Flu-like symptoms, injection site reactions'),
(15, 'Antiretrovirals', 'Gilead', 'Diarrhea, nausea, fatigue'),
(16, 'Entecavir', 'Bristol-Myers Squibb', 'Headache, fatigue, dizziness'),
(17, 'Isoniazid', 'Roche', 'Nausea, vomiting, liver issues'),
(18, 'Allopurinol', 'Takeda', 'Rash, nausea, diarrhea'),
(19, 'Adalimumab', 'AbbVie', 'Injection site reaction, headache'),
(20, 'Mesalamine', 'Pfizer', 'Nausea, headache, abdominal pain');

INSERT INTO `ns_Sp25_21482_Group5`.`Treatments` (`diseaseID`, `medicationID`, `treatmentID`) VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 3), (4, 4, 4), (5, 5, 5),
(13, 11, 6), (15, 12, 7), (16, 13, 8), (17, 14, 9), (18, 15, 10),
(19, 16, 11), (20, 17, 12), (21, 18, 13), (22, 19, 14), (23, 20, 15);

INSERT INTO `MedicalRecordDiseases` (recordID, diseaseID) VALUES
(1, 2),  -- Hypertension
(2, 3),  -- Asthma
(3, 1),  -- Diabetes
(4, 5),  -- Migraines
(5, 11), -- Arthritis (assuming 11 is Arthritis in Diseases)
(6, 6),  -- Seasonal Allergies
(7, 7),  -- Chronic Bronchitis
(8, 8),  -- Coronary Artery Disease
(9, 9),  -- Chronic Kidney Disease
(10, 10); -- Hepatitis C

INSERT INTO `ns_Sp25_21482_Group5`.`Prescriptions` (`patientID`, `medicationID`, `prescriptionID`, `dosage`, `frequency`, `refillsAllowed`, `doctorID`) VALUES
(1, 1, 1, '10mg', 'Once daily', 3, 1),
(2, 2, 2, '500mg', 'Twice daily', 2, 2),
(3, 3, 3, '100mcg', 'As needed', 5, 3),
(4, 4, 4, '20mg', 'Once daily', 3, 4),
(5, 5, 5, '40mg', 'Once daily', 1, 5);


