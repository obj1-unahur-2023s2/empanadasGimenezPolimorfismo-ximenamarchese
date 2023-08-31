object galvan {
	var property sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0
	
	method cobrarSueldo() {
		totalDinero += sueldo
		self.pagarDeudas()
	}
	method pagarDeudas() {
		if (totalDinero >= totalDeuda){
			totalDinero -= totalDeuda
			totalDeuda = 0
		}
		else{
			totalDeuda -= totalDinero
			totalDinero = 0
    		}
	}
    method gastar(cuanto){
    	if (cuanto <= totalDinero)
    		totalDinero -= cuanto
    	else{
    		totalDeuda += (totalDinero - cuanto).abs()
    		totalDinero = 0
    		}
    	}
    method totalDinero() = totalDinero
    method totalDeuda() = totalDeuda
    
}
	
object baigorria {
	var cantidadEmpanadasVendidas 
    const montoPorEmpanada = 150	
    var totalCobrado 
    
    method totalCobrado() = totalCobrado
    method venderEmpanada(){
    	cantidadEmpanadasVendidas +=1
    }
    method sueldo() = montoPorEmpanada * cantidadEmpanadasVendidas
    method cobrarSueldo() {
    	totalCobrado += self.sueldo()
    }
}

object gimenez {
	var fondoDeSueldos = 3000000
	
	method fondoDeSueldos() = fondoDeSueldos
	method pagarA(empleado){
		fondoDeSueldos -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}