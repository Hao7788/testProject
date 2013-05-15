package testproject

class Email {
	String emailAddress
	static belongsTo = [contact: Contact]
    static constraints = {
		emailAddress blank:false, unique:true
    }
	
	String toString(){
		return emailAddress
	}
}
