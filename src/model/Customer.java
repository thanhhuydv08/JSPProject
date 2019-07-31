package model;

public class Customer {
String codeCus, nameCus, genderCus,addressCus,phoneCus;

public Customer(String codeCus, String nameCus, String genderCus, String addressCus, String phoneCus) {
	super();
	this.codeCus = codeCus;
	this.nameCus = nameCus;
	this.genderCus = genderCus;
	this.addressCus = addressCus;
	this.phoneCus = phoneCus;
}

public String getCodeCus() {
	return codeCus;
}

public void setCodeCus(String codeCus) {
	this.codeCus = codeCus;
}

public String getNameCus() {
	return nameCus;
}

public void setNameCus(String nameCus) {
	this.nameCus = nameCus;
}

public String getGenderCus() {
	return genderCus;
}

public void setGenderCus(String genderCus) {
	this.genderCus = genderCus;
}

public String getAddressCus() {
	return addressCus;
}

public void setAddressCus(String addressCus) {
	this.addressCus = addressCus;
}

public String getPhoneCus() {
	return phoneCus;
}

public void setPhoneCus(String phoneCus) {
	this.phoneCus = phoneCus;
}

}
