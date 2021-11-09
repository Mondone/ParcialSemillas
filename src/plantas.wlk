class Plantas {
	
	var property anioSemilla
	var property altura
	
	method horasDeSol() 
	method esFuerte()= self.horasDeSol() > 10
	method daSemillas()= self.esFuerte()
	method espacioQueOcupa()
	
}

class Menta inherits Plantas {
	
	override method horasDeSol()= 6
	override method daSemillas()= super() or altura > 0.4
	override method espacioQueOcupa()= altura*3
	
}

class Soja inherits Plantas {
	
	override method horasDeSol() {
		if (altura < 0.5) return 6
		if (altura.beetwen(0.5,1)) return 7
		else return 9
	}
	override method daSemillas()= super() or (anioSemilla > 2007 and altura > 1)
	override method espacioQueOcupa()= altura/2
	
}

class Quinoa inherits Plantas {
	
	const horasSol
	
	override method horasDeSol()= horasSol 	
	override method daSemillas()= super() or anioSemilla < 2005
	override method espacioQueOcupa()= 0.5
	
}

// variedades

class SojaTransgenica inherits Soja {
	
	override method daSemillas() = false
	
}

class Hierbabuena inherits Menta {
	
	override method espacioQueOcupa() = super()*2
}