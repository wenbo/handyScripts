// in your terminal run following command
// node debug.js

class A {
	static mtd() {
		console.log(this.attr_a)
	}
}


class B extends A {
	static get attr_a() {
		return "sessions"
	}

	sub_mtd() {
			console.log("now in sub mtd")
			console.log(this.constructor)
		super.constructor.mtd.call(this.constructor); 				/* fix me */
	}
}

b = new B()
b.sub_mtd()
