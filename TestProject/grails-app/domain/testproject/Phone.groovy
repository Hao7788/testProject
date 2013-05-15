package testproject

class Phone {
	String phoneNumber
	static belongsTo = [contact: Contact]
    static constraints = {
		phoneNumber blank:false, unique:true
    }
	
	String toString(){
		return phoneNumber
	}
}
