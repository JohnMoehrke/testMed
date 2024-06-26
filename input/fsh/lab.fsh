
Instance:   ex-specimen-2
InstanceOf: Specimen
Usage: #inline
* status = #available
* type.text = "STOOL"
* collection.collectedDateTime = 1995-07-29T07:00:00Z
* collection.bodySite.text = "FECES"

Instance: in-Organization
InstanceOf: Organization
Usage: #inline
* type.text = "Somewhere"  // couldn't find a code for this
* name = "Hello world" 
* telecom.value = "+17773339998"
* telecom.system = #phone


Instance: ex-labTest-2
InstanceOf: Observation
Usage: #inline
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* valueString = "NO OVA OR PARASITES FOUND"
* effectiveDateTime = 1995-08-03T14:49:00Z
* performer = Reference(Organization/in-Organization)
* subject = Reference(Patient/ex-patient)

Instance: ex-labTest-3
InstanceOf: Observation
Usage: #inline
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* valueString = "MODERATE WBC'S SEEN"
* effectiveDateTime = 1995-08-03T14:49:00Z
* performer = Reference(Organization/in-Organization)
* subject = Reference(Patient/ex-patient)
* note[+].text = "Hello"
//* note[+].text = "world"
// Two notes here will crash the publisher

Instance: ex-labTest-4
InstanceOf: Observation
Usage: #inline
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* valueString = "MODERATE YEAST"
* effectiveDateTime = 1995-08-03T14:49:00Z
* performer = Reference(Organization/in-Organization)
* subject = Reference(Patient/ex-patient)

Instance: ex-labTest-5
InstanceOf: Observation
Title: "observation with notes"
Description: "two notes in an example does not crash the publisher, but a contained same thing will crashe the publisher"
Usage: #example
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory
* code.text = "Parasitology Remark(s)"
* valueString = "MODERATE WBC'S SEEN"
* effectiveDateTime = 1995-08-03T14:49:00Z
* performer = Reference(Patient/ex-patient)
* subject = Reference(Patient/ex-patient)
* note[+].text = "Hello"
* note[+].text = "world"
// this will not


Instance: ex-labReport-2
InstanceOf: DiagnosticReport
Title: "Example 2 of an MHV labReport"
Usage: #example
Description: """
Example from a mock labReportTO
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* category[+] = http://terminology.hl7.org/CodeSystem/v2-0074#MB
* code.text = "LR MICROBIOLOGY REPORT"
* code.coding = LOINC#18725-2
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 1995-08-03T14:49:00Z
* issued = 1995-08-03T14:49:00Z
* contained[+] = ex-labTest-2
* result[+] = Reference(ex-labTest-2)
* contained[+] = ex-labTest-3
* result[+] = Reference(ex-labTest-3)
* contained[+] = ex-labTest-4
* result[+] = Reference(ex-labTest-4)
* contained[+] = ex-specimen-2
* specimen[+] = Reference(ex-specimen-2)
* contained[+] = in-Organization
* performer[+] = Reference(Organization/in-Organization)
* performer[+].display = "MANGAS,PHYLLIS A"
* presentedForm.contentType = #text/plain
* presentedForm.data = """
QWNjZXNzaW9uIFtVSURdOiBQQVJBUyA5NSAyNjMgW10gICAgICAgICAgICBSZWNlaXZlZDogQXVnIDAxLCAxOTk1QDExOjAyCkNvbGxlY3Rpb24gc2FtcGxlOiBTVE9PTCAgICAgICAgICAgICAgIENvbGxlY3Rpb24gZGF0ZTogSnVsIDI5LCAxOTk1IDA3OjAwClNpdGUvU3BlY2ltZW46IEZFQ0VTClByb3ZpZGVyOiBNQU5HQVMsUEhZTExJUyBBCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiogUEFSQVNJVE9MT0dZIEZJTkFMIFJFUE9SVCA9PiBBdWcgMDMsIDE5OTUgICBURUNIIENPREU6IDEwMDMKUGFyYXNpdG9sb2d5IFJlbWFyayhzKToKTk8gT1ZBIE9SIFBBUkFTSVRFUyBGT1VORCAKTU9ERVJBVEUgV0JDJ1MgU0VFTiAKTU9ERVJBVEUgWUVBU1QK
"""
