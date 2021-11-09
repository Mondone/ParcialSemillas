class Plantas {
	
	var property anioSemilla
	var property altura
	
	method horasDeSol() 
	method esFuerte()= self.horasDeSol() > 10
	method daSemillas()= self.esFuerte()
	method espacioQueOcupa()
	method esParcelaIdeal(parcela) 
	
}

class Menta inherits Plantas {
	
	override method horasDeSol()= 6
	override method daSemillas()= super() or altura > 0.4
	override method espacioQueOcupa()= altura*3
	override method esParcelaIdeal(parcela) = parcela.superficie() > 6 
}

class Soja inherits Plantas {
	
	override method horasDeSol() {
		if (altura < 0.5) {return 6}
		if (0.5 < altura < 1) {return 7}
		else {return 9}
	}
	override method daSemillas()= super() or (anioSemilla > 2007 and altura > 1)
	override method espacioQueOcupa()= altura/2
	override method esParcelaIdeal(parcela) = parcela.horasSolParcela() == self.horasDeSol()
}

class Quinoa inherits Plantas {
	
	const horasSol
	
	override method horasDeSol()= horasSol 	
	override method daSemillas()= super() or anioSemilla < 2005
	override method espacioQueOcupa()= 0.5
	override method esParcelaIdeal(parcela) = parcela.plantas().all({plan=>plan.altura() < 1.5})
}

// variedades

class SojaTransgenica inherits Soja {
	
	override method daSemillas() = false
	override method esParcelaIdeal(parcela) = parcela.cantidadMaximaPlantas() == 1
	
}

class Hierbabuena inherits Menta {
	
	override method espacioQueOcupa() = super()*2
}