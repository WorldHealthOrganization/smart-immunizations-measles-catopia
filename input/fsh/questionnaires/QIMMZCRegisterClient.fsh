Instance: QIMMZCRegisterClient
InstanceOf: sdc-questionnaire-extr-smap
Title: "Client Registration Questionnaire"
Description: "Immunization - Client Registration Questionnaire"
Usage: #definition
* version = "2023"
* status = #draft
* subjectType = #Patient
* language = #en
* contained[+] = IMMZ.C.DE5
//* contained[+] = YesNoUnknown

* extension[+].url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-targetStructureMap"
* extension[=].valueCanonical = "http://smart.who.int/ig/smart-immunizations-measles/StructureMap/IMMZCQRToPatient"


//Header
//* insert Question(header,Client Registration form: to fill in by ....,display,true,false)

* insert Question(uniqueId, NUPI for the client,string,true,false)
* item[=]
  * code[+] = IMMZ.C#DE1

* insert Question(name, Client name,group,true,false)
* item[=]
  * code[+] = IMMZ.C#DE2
  * code[+] = $LNC#54125-0 "Patient name"
  * code[+] = $SCT#371484003 "Patient name (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE3
    * code[+] = $LNC#45392-8 "First name"
    * code[+] = $SCT#184095009 "Patient forename (observable entity)"

  * insert Question(MiddleName, Middle name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE3.1
    
  * insert Question(familyName, Family name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE4
    * code[+] = $LNC#45394-4 "Last name"
    * code[+] = $SCT#184096005 "Patient surname (observable entity)"

* insert Question(sex, Sex,choice,true,false)
* item[=]
  * answerValueSet = Canonical(IMMZ.C.DE5)
  * code[+] = IMMZ.C#DE5
  * code[+] = $LNC#46098-0	"Sex"
  * code[+] = $SCT#184100006 "Patient sex (observable entity)"

* insert Question(birthDate, Birth Date,date,false,false)
* item[=]
  * code[+] = IMMZ.C#DE10
  * code[+] = $LNC#21112-8	"Birth date"
  * code[+] = $SCT#184099003 "Date of birth (observable entity)"

* insert Question(caregiver, Mother/guardian,group,true,false)
* item[=]
  * code[+] = IMMZ.C#DE14
  * code[+] = $SCT#184140000 "Caregiver details (observable entity)"
  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16

  * insert Question(middleName, Middle Name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16.1

  * insert Question(familyName, Last name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE17

* insert Question(fcaregiver, Father/gardian,group,true,false)
* item[=]
  * code[+] = IMMZ.C#DE14.f
  * code[+] = $SCT#184140000 "Caregiver details (observable entity)"

  * insert Question(firstName, First or given name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16.f

  * insert Question(middlename, Middle name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE16.1.f

  * insert Question(familyName, Last name,string,false,false)
  * item[=]
    * code[+] = IMMZ.C#DE17.f
    
* insert Question(phone, Client Phone number,string,true,false)
* item[=]
  * code[+] = IMMZ.C#DE18
  * code[+] = $LNC#42077-8 "Patient Phone number"
  * code[+] = $SCT#184103008 "Patient telephone number (observable entity)"

* insert Question(administrativeArea, Administrative area,choice,false,false)
* item[=]
  * code[+] = IMMZ.C#DE19
  * code[+] = $LNC#56799-0 "Address"
  * code[+] = $SCT#184097001 "Patient address (observable entity)"

  * insert Question(County, County,choice,false,false)
    * item[=]
    * code[+] = IMMZ.C#DE19.1
  * insert Question(Subcounty, Subcounty,choice,false,false)
    * item[=]
    * code[+] = IMMZ.C#DE19.2
  * insert Question(Ward, Ward,choice,false,false)
    * item[=]
    * code[+] = IMMZ.C#DE19.3
  * insert Question(CHU,CHU,choice,false,false)
    * item[=]
    * code[+] = IMMZ.C#DE19.3


* insert Question(healthWorker, Health Worker,boolean,true,false)
* item[=]
  * code[+] = IMMZ.C#DE20


