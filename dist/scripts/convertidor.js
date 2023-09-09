var longitud = {
  //Se toma como medida principal el metro de ahi salen las equivalencias para las demas medidas 
  metros: 1,
  centimetros: 100,
  milimetros: 1000,
  kilometros: 0.001,
  millas: 0.000621371,
  micrometros: 1000000,
  nanometros: 1000000000,
  pulgadas: 39.3701,
  pies: 3.28084,
}
var masa = {
  //Se toma como medida principal el gramo de ahi salen las equivalencias para las demas medidas 

  gramos: 1,
  kilogramos: 0.001,
  miligramos: 1000,
  toneladas: 0.000001,
  libras: 0.00220462,
  onzas: 0.035274
}
var tiempo = {
  //Se toma como medida principal el segundo de ahi salen las equivalencias para las demas medidas 

  segundos: 1,
  milisegundos: 1000,
  microsegundos: 1000000,
  nanosegundos: 1000000000,
  minutos: 0.0166667,
  horas: 0.000277778,
  dias: 0.000011574,
  semanas: 0.0000016534,
  meses: 0.00000038052,
  years: 0.00000003171 
}
var temoatura = {
  //Se toma como medida principal los celsius de ahi salen las equivalencias para las demas medidas 

  celsius: 1,
  fahrenheit: 33.8,
  kelvin: 274.15
}
var velocidad = {
  //Se toma como medida principal el metrosporsegundo de ahi salen las equivalencias para las demas medidas 

  metrosPorSegundo: 1,
  kilometrosPorHora: 3.6,
  millasPorHora: 2.23694,
  nudos: 1.94384
}

var indexArr = [longitud, masa, velocidad, temoatura, tiempo];

function converter(tipoUnidad, unidad1, unidad2, value){
  
  var valorFinal;
    
  if(tipoUnidad == velocidad){
    
    unidad1 = altervelocidadUnit(unidad1);
    unidad2 = altervelocidadUnit(unidad2);
    
  }else{
    unidad1 = unidad1.toLowerCase();
    unidad2 = unidad2.toLowerCase();  
  }

  if(tipoUnidad == temoatura){   
    valorFinal = convertTemoatura(value, unidad1, unidad2);   
  }else{
    valorFinal = value*(1/tipoUnidad[unidad1])*tipoUnidad[unidad2];
  }
    
  return valorFinal;
  
}

$("#value1").on("keyup", function(e){
  
  e.preventDefault();
  
  var convertedValue,
      value1 = document.getElementById("value1").value,
      unitIndex = document.getElementById("tipoUnidad").selectedIndex,
      unidad1 = document.getElementById("select1").value,
      unidad2 = document.getElementById("select2").value;
  
  value1 = parseFloat(value1);

  if(typeof value1 != "number"){
    throw "Por favor ingresa un numero";
  }else{       
        
    convertedValue = converter(indexArr[unitIndex], unidad1, unidad2, value1);
    
    if(isNaN(convertedValue) == true){
      console.log("FALLO");
      convertedValue = "";
    }
    
    document.getElementById("value2").value = convertedValue;
    
    
  }
  
})


$("#value2").on("keyup", function(e){
  
  e.preventDefault();
  
  var convertedValue,
      value2 = document.getElementById("value2").value,
      unitIndex = document.getElementById("tipoUnidad").selectedIndex,
      unidad1 = document.getElementById("select1").value,
      unidad2 = document.getElementById("select2").value;
  
  value2 = parseFloat(value2);

  if(typeof value2 != "number"){
    throw "Please enter a number";
  }else{       
    
    convertedValue = converter(indexArr[unitIndex], unidad2, unidad1, value2);
    
    if(isNaN(convertedValue) == true){
      console.log("bloop");
      convertedValue = "";
    }
    
    document.getElementById("value1").value = convertedValue;
    
  }
  
})

var index,
    nuevoContenido,
    nuevoContenido1,
    opcionesUnidad,
    body;

$(".selectBox").on("input", function(e){
  
    e.preventDefault();
  
  var convertedValue,
      value1 = document.getElementById("value1").value,
      unitIndex = document.getElementById("tipoUnidad").selectedIndex,
      unidad1 = document.getElementById("select1").value,
      unidad2 = document.getElementById("select2").value;
  
  value1 = parseFloat(value1);

  if(typeof value1 != "number"){
    throw "Por favor ingresa un numero";
  }else{       
        
    convertedValue = converter(indexArr[unitIndex], unidad1, unidad2, value1);

    if(isNaN(convertedValue) == true){
      console.log("bloop");
      convertedValue = "";
    }
    
    document.getElementById("value2").value = convertedValue;
    
    
  }
    

})


$("#tipoUnidad").on("input", function(){
    
  index = document.getElementById("tipoUnidad").selectedIndex;
  body = "";


  opcionesUnidad = [["Metros", "Pies", "Millas", "Pulgadas", "Kilometros", "Milimetros", "Micrometros", "Nanometros", "Centimetros"], ["Gramos", "Kilogramos", "Miligramos", "Toneladas", "Libras", "Onzas"], ["Metros Por Segundo", "Millas Por Hora", "Kilometros Por Hora", "Nudos"], ["Celsius", "Fahrenheit", "Kelvin"], ["Segundos", "Milisegundos", "Microsegundos", "Nanosegundos", "Minutos", "Horas", "Dias", "Semanas ", "Meses", "Years"]]


  $(".selectBox").attr("name", indexArr[index]);

  for(var i = 0; i < opcionesUnidad[index].length; i++){
    body += '<option value=' + opcionesUnidad[index][i] + '>' + opcionesUnidad[index][i] + '</option>';

  }
  
  $(".selectBox").empty().prepend(body);
   
});


function altervelocidadUnit(unit){
  
  
    switch(unit){
      case "Metros":
        unit = "metersPorSegundo";
        break;
      case "Millas":
        unit = "milesPorHora";
        break;
      case "Kilometros":
        unit = "KilometrosPorHora";
        break;
      case "Nudos":
        unit = "Nudos";
        break;
    }
   
  return unit;

}

function convertTemoature(value, scale1, scale2){
    
  var temp;
  
  if(scale1 == scale2){
    temp = value;
  }else{
    if(scale1 != "celsius"){
      value = convertToCelsius(value, scale1);
    }
    
    if(scale2 == "celsius"){
      temp = value;
    }else if(scale2 == "fahrenheit"){
      temp = value*(9/5) + 32;
    }else{
      temp = value + 273.15;
    }
  }
  
  return temp;
  
}


function convertToCelsius(value, scale){
  
  var celsius;
  
  if(scale == "fahrenheit"){
    celsius = (value - 32)*(5/9);
  }else{
    celsius = value - 273.15;
  }
  
  return celsius;
  
}