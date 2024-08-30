//Escribir aqui los objetos
object gimenez {
  var fondoSueldos = 300000
  
  method pagarSueldo(empleado) {
    fondoSueldos -= empleado.sueldo()
    empleado.cobrarSueldo()
  }

  method fondo() {
    return fondoSueldos
  }
}

object galvan {

  var sueldo = 15000
  //Es valido porque no depende solo del sueldo.
  var saldo = 0
  //si tengo dinero no tengo deuda, si tengo deuda no tengo dinero

  method gastar(cuanto) {
    
  }

  method deuda() {
    
  }

  method dinero() {
    return saldo.max(0)
  }

  method sueldo(){
    return sueldo
  }

  method sueldo(_sueldo){
    sueldo = _sueldo
  }

  method cobrarSueldo() {
    saldo += self.sueldo() 
  }

}

object baigorria {
  var empanadasVendidas = 0
  var precioPorEmpanada = 15
  var totalCobrado = 0

  method sueldo(){
    return precioPorEmpanada * empanadasVendidas
  }

//No es un setter. No sigue la convencion
  method vender(cantidad) {
    empanadasVendidas += cantidad
  }

  method totalCobrado() {
    return totalCobrado
  }
  
  method cobrarSueldo() {
    totalCobrado += self.sueldo()
    empanadasVendidas = 0
  }

}