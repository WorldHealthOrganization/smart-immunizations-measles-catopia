Invariant:    IMMZ-C-name-1
Description:  "Only letters and special characters (period, dash) allowed."
Expression:   "$this.matches('[A-Za-z-.]*')"
Severity:     #error


Logical:      IMMZCRegisterClient
Title:        "IMMZ.C Register Client"
Description:  "Data elements for the IMMZ.C Register Client Data Dictionary."
* ^extension[http://hl7.org/fhir/tools/StructureDefinition/logical-target].valueBoolean = true
* ^name = "IMMZCRegisterClient"
* ^status = #active

* uniqueId 1..1 SU string "Unique identifier" "Unique identifier for the client, according to the policies applicable to each country. There can be more than one unique identifier used to link records (e.g. national ID, health ID, immunization information system ID, medical record ID)."
  * ^code[+] = IMMZ.C#DE1
* name 1..1 string "Name" "The full name of the client"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE2
* firstName 0..1 string "First name" "Client's first name or given name"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE3
* middleName 0..1 string "Middle name" "Client's middle name or given name"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE3.1
* familyName 0..1 string "Last name" "Client's family name or last name"
  * obeys IMMZ-C-name-1
  * ^code[+] = IMMZ.C#DE4
* sex 1..1 code "Sex" "Documentation of a specific instance of sex information for the client"
  * ^code[+] = IMMZ.C#DE5
* sex from IMMZ.C.DE5 (required)
* birthDate 0..1 date "Date of birth" "Client's date of birth (DOB) if known; if unknown, use assigned DOB for administrative purposes"
  * ^code[+] = IMMZ.C#DE10
* caregiver 0..* BackboneElement "Mother" "The client's mother caregiver (person) which could be next of kin "
  * ^code[+] = IMMZ.C#DE14
  * firstName 0..1 string "Mother's first name" "First or given name of the client's mother"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE16
  * middleName 0..1 string "Mother's Middle name" "Family middle name of the client's mother"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE16.1
  * familyName 0..1 string "Mother's Family name" "Family name or last name of the client's mother"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE17
* fcaregiver 0..* BackboneElement "Father" "The client's father caregiver (person) which could be next of kin "
  * ^code[+] = IMMZ.C#DE14.f
  * firstName 0..1 string "Father/Guardian's first name" "First or given name of the client's father"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE16.f
  * middleName 0..1 string "Father/Guardian's Middle name" "Family name or last name of the client's father"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE16.1.f
  * familyName 0..1 string "Father's Family name" "Family name or last name of the client's father"
    * obeys IMMZ-C-name-1
    * ^code[+] = IMMZ.C#DE17.f

* phone 1..1 string "Contact phone number" "Client's phone number"
  * ^code[+] = IMMZ.C#DE18
* administrativeArea 0..1 CodeableConcept "Administrative area" "The name of the County/subcounty/ward/chu of where the client lives"
  * ^code[+] = IMMZ.C#DE19
* county 0..1 CodeableConcept "County" "The name of the County of where the client lives"
  * ^code[+] = IMMZ.C#DE19.1
* subcounty 0..1 CodeableConcept "Subcounty" "The name of the Sub-County of where the client lives"
  * ^code[+] = IMMZ.C#DE19.2
* ward 0..1 CodeableConcept "Ward" "The name of the Ward of where the client lives"
  * ^code[+] = IMMZ.C#DE19.3
* chu 0..1 CodeableConcept "CHU" "The name of the CHU of where the client lives"
  * ^code[+] = IMMZ.C#DE19.4
* healthWorker 1..1 boolean "Active health worker" "Is the client an active and participating health worker. This data element is used mainly for reporting and indicators purposes."
  * ^code[+] = IMMZ.C#DE20
  

// Mapping:      IMMZ-C-to-Patient
// Source:       IMMZCRegisterClient
// Target:       "Patient"
// * -> "Patient"
// * uniqueId -> "Patient.identifier.value"
// * name -> "Patient.name.text"
// * firstName -> "Patient.name.given"
// * familyName -> "Patient.name.family"
// * sex -> "Patient.gender"
// * birthDate -> "Patient.birthDate"
// * caregiver -> "Patient.contact"
// * caregiver.name -> "Patient.contact.name.text"
// * caregiver.firstName -> "Patient.contact.name.given"
// * caregiver.familyName -> "Patient.contact.name.family"
// * phone -> "Patient.telecom.value"
// * administrativeArea -> "Patient.address.text"
