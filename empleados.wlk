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
    saldo -= cuanto
  }

  method deuda() {
//abs()
// Answers absolute value of self

// 2.abs()      ==> 2
// (-3).abs()   ==> 3 (be careful with parentheses)
// 2.7.abs()    ==> Answers 2.7
// (-3.2).abs() ==> Answers 3.2 (be careful with parentheses)

// min()
// Answers the element that represents the minimum value in the range.
// The criteria is by direct comparison of the elements (they must be sortable).
// (1..5).min()  => Answers 1

    return saldo.min(0).abs()
  }

  method dinero() {
//   max()
// Answers the element that represents the maximum value in the range.
// (1..15).max()                       =>  Answers 15
// new Range(start = 2, end = 5).max() => Answers 5
// <strong>see</strong> List#max()
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