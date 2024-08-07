import 'dart:io';

void main(){
   Map<int, String> datosPersonas ={
    108801:"Yefry",
    108802:"Alex",
    108803:"Angelo",
  };
  while(true){
  print("Elija la opcion que desee");
  print("1.Guardar");
  print("2.Mostrar");
  print("3.Modificar");
  print("4.Eliminar");
  print("5.Salir");
  int opcion = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    
    case 1:
      print("Ingrese el numero de la cc a guardar");
      int cedula = int.parse(stdin.readLineSync()!);
      print("Ingrese el nombre para asignar a la cedula");
      String nombre = stdin.readLineSync()!;

      datosPersonas[cedula]=nombre;
      break;

    case 2:
      print("Ingrese el numero de cedula a mostrar ");
      int cedulaBuscar = int.parse(stdin.readLineSync()!);
      datosPersonas.forEach((key, value) {
        if(datosPersonas[key]==datosPersonas[cedulaBuscar])
        print("la cedula es: $key, y el nombre es: $value");
      });
      if(cedulaBuscar != datosPersonas){
        print("Cedula no encontrada");
      }
    break;
    case 3:
    print("Ingrese en numero de la cedula a modificar");
    int modificacion = int.parse(stdin.readLineSync()!);
     bool update = false;
     datosPersonas.forEach((key, value) {
        if(datosPersonas[key]==datosPersonas[modificacion]){
          print("Ingrese el nuevo nombre");
          String nuevoDato = stdin.readLineSync()!;
          datosPersonas[key] = nuevoDato;
          update = true;
        }
      });
      if(update==false){
        print("Cedula no encontrada");
      }
    break;
    case 4:
      print("Ingrese en numero de la cedula a eliminar");
      int eliminar = int.parse(stdin.readLineSync()!);
      bool updateEliminar = true;
      datosPersonas.forEach((key, value) {
        if(datosPersonas[key]==datosPersonas[eliminar]){
          updateEliminar=false;
        }
      });
      if(updateEliminar==false){
        datosPersonas.remove(eliminar);
        print("Cedula eliminada con exito");
      }
    break;
    case 5:
      print("Saliendo");
    break;

    default:
    } 
  };
}
