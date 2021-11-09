class Parcelas {
	const property ancho
	const property largo
	const property horasSolParcela
	var property plantas = []
	
	method superficie() = ancho*largo
	method cantidadMaximaPlantas() = if(ancho>largo){self.superficie()/5} else {(self.superficie()/3)+largo}
	method tieneComplicaciones() = plantas.any({plan=>plan.horasDeSol() < horasSolParcela })
	method hayLugar() = plantas.size() < self.cantidadMaximaPlantas()
	// revisar plantarPlanta
	method plantarPlanta(planta) {
		if ( self.hayLugar() and horasSolParcela-planta.horasDeSol() <= 2)
		plantas.add(planta)
		else {
			self.error("No se puede plantar, se supero la cantidad")
		}
	}
	
	
	
	
}

