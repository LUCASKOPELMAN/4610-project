CREATE PROCEDURE TP_Q1()
SELECT doctorID, doctorFirstName, doctorLastName, specialization, yearsOfExperience
FROM Doctors
WHERE specialization = "Pediatrics" AND yearsOfExperience > (SELECT AVG(yearsOfExperience) FROM Doctors)
ORDER BY yearsOfExperience DESC;

CREATE PROCEDURE TP_Q2()
SELECT Patients.patientID, Patients.patientFirstName, Patients.patientLastName, COUNT(Prescriptions.prescriptionID) AS totalPrescriptions
FROM Patients
JOIN Prescriptions ON Patients.patientID = Prescriptions.patientID
GROUP BY Patients.patientID, Patients.patientFirstName, Patients.patientLastName
ORDER BY totalPrescriptions DESC;

CREATE PROCEDURE TP_Q3()
SELECT * 
FROM Appointments 
WHERE appointmentDate < CURRENT_DATE();

CREATE PROCEDURE TP_Q4()
SELECT Patients.patientID, Patients.patientFirstName, Patients.patientLastName, InsurancePolicies.premiumAmount
FROM Patients
JOIN InsurancePolicies ON Patients.policyID = InsurancePolicies.policyID
WHERE InsurancePolicies.premiumAmount = (SELECT MAX(InsurancePolicies.premiumAmount) 
FROM InsurancePolicies);

CREATE PROCEDURE TP_Q5()
SELECT Doctors.doctorID, Doctors.doctorFirstName, Doctors.doctorLastName, 
       COUNT(Appointments.patientID) AS totalPatients
FROM Appointments
JOIN Doctors ON Appointments.doctorID = Doctors.doctorID
GROUP BY Doctors.doctorID, Doctors.doctorFirstName, Doctors.doctorLastName
HAVING COUNT(Appointments.patientID) > 
       (SELECT AVG(patient_count) 
        FROM (SELECT doctorID, COUNT(patientID) AS patient_count 
              FROM Appointments 
              GROUP BY doctorID) AS subquery);

CREATE PROCEDURE TP_Q6()
SELECT patientFirstName, patientLastName, diseaseName 
FROM MedicalRecordDiseases 
JOIN MedicalRecords ON MedicalRecordDiseases.recordID = MedicalRecords.recordID
JOIN Patients ON MedicalRecords.patientID = Patients.patientID
JOIN Diseases ON MedicalRecordDiseases.diseaseID = Diseases.diseaseID
WHERE diseaseName = 'Asthma';

CREATE PROCEDURE TP_Q7()
SELECT patientFirstName, patientLastName, diseaseName, MAX(appointmentDate)
FROM Patients
JOIN Appointments ON Patients.patientID = Appointments.patientID
JOIN MedicalRecords ON MedicalRecords.patientID = Patients.patientID
JOIN MedicalRecordDiseases ON MedicalRecordDiseases.recordID = MedicalRecords.recordID
JOIN Diseases ON MedicalRecordDiseases.recordID = Diseases.diseaseID
WHERE diseaseName REGEXP "Anxiety|Depression"
GROUP BY patientFirstName, patientLastName, diseaseName, appointmentDate;


CREATE PROCEDURE TP_Q8()
SELECT DISTINCT Doctors.doctorID, Doctors.doctorFirstName, Doctors.doctorLastName
FROM Doctors
JOIN Appointments ON Doctors.doctorID = Appointments.doctorID
JOIN Patients ON Appointments.patientID = Patients.patientID
JOIN MedicalRecords ON Patients.patientID = MedicalRecords.patientID
JOIN MedicalRecordDiseases ON MedicalRecords.recordID = MedicalRecordDiseases.recordID
JOIN Diseases ON MedicalRecordDiseases.diseaseID = Diseases.diseaseID
WHERE Diseases.severityLevel = 'Severe';

CREATE PROCEDURE TP_Q9()
SELECT p.patientFirstName, p.patientLastName, iprovider.providerName
FROM Patients p
JOIN InsurancePolicies iproviderolicy ON p.policyID = iproviderolicy.policyID
JOIN InsuranceProviders iprovider ON iproviderolicy.providerID = iprovider.providerID
WHERE EXISTS (SELECT * FROM Appointments a WHERE a.patientID = p.patientID AND a.appointmentDate > '2023-01-01')AND p.dateOfBirth < '1985-01-01'
ORDER BY p.patientLastName;	

CREATE PROCEDURE TP_Q10()
SELECT providerName, COUNT(DISTINCT patientID) as patientCount, AVG(premiumAmount) as avgPremium
FROM InsuranceProviders 
JOIN InsurancePolicies ON InsuranceProviders.providerID = InsurancePolicies.providerID
JOIN Patients ON InsurancePolicies.policyID = Patients.policyID
GROUP BY providerName
HAVING COUNT(DISTINCT patientID) > 2
ORDER BY avgPremium DESC;
