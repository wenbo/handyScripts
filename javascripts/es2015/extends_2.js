// in your terminal run following command
// node ko.js

class A {
	static mtd() {
		console.log(this.attr_a)
	}

		static mtd_2(){
				return this.mtd()
		}

	sub_mtd() {
			console.log("now in sub mtd")
			console.log(this.constructor)
			console.log(this.constructor.mtd)
		this.constructor.mtd_2.call(this.constructor); 				/* fix me */
	}
}


class B extends A {
	static get attr_a() {
		return "sessions"
	}
}

b = new B()
b.sub_mtd()
