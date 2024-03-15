Logical: AddressTJT
Title: "Address TJT- logical model"
Description: "Address"
* use 1..1 CD "Purpose of this address." "Aadressi tüüp"
* text 0..1 ST "Text representation of the address" "Aadress tekstina"
* city 0..1 ST "Name of city, town etc." "Linna nimi"
* postalCode 0..1 ST "Postal code for area" "Postiindeks"  
* country 0..1 CD "Country code." "Riik, riigi kood"
// siia peaks veel lisama aadressi elemente