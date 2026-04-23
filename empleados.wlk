//Escribir aqui los objetos


object gimenez {

    var fondos = 300000


    method fondosActuales() {
        return fondos
    }


    method pagarSueldo (empleado) {
        fondos = fondos - empleado.sueldo()
    }
}



object galvan {

    var sueldo = 15000

    var deuda = 213213

    var dinero = 10


    method sueldoActualizado(sueldoActualizado) {
        sueldo = sueldoActualizado
    }


    method sueldo() {
        return sueldo
    }


    method deuda() {
        return deuda
    }


    method dinero() {
        return dinero
    }


    method gastar(dineroGastado) {  
        if (dineroGastado > dinero) {                
            self.aumentarDeuda(dineroGastado)
            }
            else {
                dinero - dineroGastado
            }
    }


    method aumentarDeuda(dineroGastado) {
        deuda = deuda + dineroGastado
        dinero - dineroGastado


    }


    method cobrarSueldo(sueldo) {
        dinero = dinero + sueldo
        if (deuda > 0) {        // esta condicion podria ser una subtarea
            self.pagarDeuda()
        }
    }


    method pagarDeuda() {
        if (dinero > deuda) {
            dinero = dinero - deuda
            deuda = 0
            }
            else {
                deuda = deuda - dinero
                dinero = 0
            }
    }
}





object baigorria {

    var cantidadEmpanadasVendidas = 0   

    var totalCobrado = 0



    method sueldo() {
        return cantidadEmpanadasVendidas * 15
    }


    method ventaEmpanadas (cantidadEmpanadas) {
        cantidadEmpanadasVendidas = cantidadEmpanadasVendidas + cantidadEmpanadas 
    }


    method cobrarSueldo() {
        totalCobrado = totalCobrado + self.sueldo() 
        cantidadEmpanadasVendidas = 0
    }


    method totalCobrado() {
        return totalCobrado
    }
    
}


