class Parcelas {
	const property ancho
	const property largo
	const property horasSolParcela
	var property plantas = []
	
	method superficie() = ancho*largo
	method cantidadMaximaPlantas() = if(ancho>largo){self.superficie()/5} else {(self.superficie()/3)+largo}
	method tieneComplicaciones() = plantas.any({plan=>plan.horasDeSol() < horasSolParcela })
	method hayLugar() = plantas.size() < self.cantidadMaximaPlantas()
	
	method plantarPlanta(planta) {
		if (self.hayLugar() and (horasSolParcela-planta.horasDeSol()<=2)) {
			plantas.add(planta)
		}
		else {
			self.error("No se puede plantar, se supero la cantidad")
		}
	}
	method seAsociaBien()
		
}

class ParcelasEcologicas inherits Parcelas {
	
	method seAsociaBien(planta) = !self.tieneComplicaciones() and planta.esParcelaIdeal(self)
			
}

class ParcelasIndustriales inherits Parcelas {
	
	method seAsociaBien(planta) = self.plantas().size()<=2 and planta.esFuerte() 
	
}