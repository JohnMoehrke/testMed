Instance:   ex-medication-0
InstanceOf: MedicationStatement
Title: "Example of a medication R4, minimal"
Description:      "holding typical values"
Usage: #example
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #active
* category = http://terminology.hl7.org/CodeSystem/medication-statement-category#patientspecified
* subject = Reference(Patient/ex-patient)
* effectivePeriod.start = 2004-12-25 // started taking
* effectivePeriod.end = 2021-12-25  // end of prescription
* dateAsserted = 2020-11-24
* note.text = "a minimal medication"
* dosage.text = "1 tablet"
* dosage.doseAndRate.doseQuantity = 1 '{Capsule}' // strength
// frequency
* dosage.doseAndRate.rateRatio.numerator.value = 3 // three times per day
* dosage.doseAndRate.rateRatio.denominator = 1 '/d' // day
* dosage.route = http://snomed.info/sct#26643006
* medicationCodeableConcept.text = "Tylenol"
* reasonCode.text = "Body pains"
* contained[+] = in-Provenance
* contained[+] = in-Pharmacy
* contained[+] = in-Dispense
* contained[+] = in-Request
* partOf[+] = Reference(in-Dispense)
* basedOn = Reference(in-Request)
* identifier.value = "1234" // The prescription number

Instance: in-Dispense
InstanceOf: MedicationDispense
Usage: #inline
* status = #unknown
* medicationCodeableConcept.text = "Tylenol"
// maybe a function is needed?? * performer.function = 
* performer.actor = Reference(in-Pharmacy)

Instance: in-Pharmacy
InstanceOf: Organization
Usage: #inline
* type.text = "Pharmacy"  // couldn't find a code for this
* name = "CVS" // PHARMACY_NAME
* telecom.value = "+17773339998" // PHARMACY_PHONE_NBR
* telecom.system = #phone

Instance: in-Request
InstanceOf: MedicationRequest
Usage: #inline
* status = #active
* intent = #order
* medicationCodeableConcept.text = "Tylenol"
* subject = Reference(Patient/ex-patient)
* requester.display = "Dr. Prancy Practitioner"
* identifier.value = "1234" // The prescription number

Instance: in-Provenance
InstanceOf: Provenance
Usage: #inline
* target.reference = "#"
* occurredDateTime = "2020-11-24"
* recorded = "2020-11-24T13:00:00.0000Z"
* agent.type = http://terminology.hl7.org/CodeSystem/provenance-participant-type#author
* agent.who = Reference(ex-patient)


Instance:   ex-patient
InstanceOf: Patient
Title:      "Dummy Patient example"
Description: "Dummy patient example for completeness sake. No actual use of this resource other than an example target"
Usage: #example
//* identifier = urn:uuid:2.16.840.1.113883.4.349#MVI // MVI ICN VALUE WITH CHECKSUM>
// history - http://playgroundjungle.com/2018/02/origins-of-john-jacob-jingleheimer-schmidt.html
// wiki - https://en.wikipedia.org/wiki/John_Jacob_Jingleheimer_Schmidt
* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* name[+].use = #usual
* name[=].family = "Schmidt"
* name[=].given = "John"
* name[+].use = #old
* name[=].family = "Schnidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingle"
* name[=].given[+] = "Heimer"
* name[=].period.end = "1960"
* name[+].use = #official
* name[=].family = "Schmidt"
* name[=].given[+] = "John"
* name[=].given[+] = "Jacob"
* name[=].given[+] = "Jingleheimer"
* name[=].period.start = "1960-01-01"
* name[+].use = #nickname
* name[=].family = "Schmidt"
* name[=].given = "Jack"
* gender = #other
* birthDate = "1923-07-25"
* address.state = "WI"
* address.country = "USA"

