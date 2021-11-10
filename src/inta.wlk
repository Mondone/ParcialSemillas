object inta {
	
	var property parcelas = #{}
	
	method promedioPlantas() = parcelas.sum({parc=>parc.plantas().size()} /parcelas.size()

	// casi llego a hacer este
	method parcelaMasSustentable() = 
	
		parcelas.max({parce=>parce.seAsociaBien(parcela.plantas()) 
		
		parcelas.filter({parce=>parce.plantas().size() > 4 })
	}
	)
}
