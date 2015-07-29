Proceso facturaGalleta
	promocion<-10
	error=0
	Escribir "�Nuestras galletas el dia de hoy estan al 10% de descuento!"
	Escribir "¿Cuantas necesita?"
	leer cantidad
	Si cantidad<=0 Entonces
		Escribir "Error, intente de nuevo"
		error=1
		Sino
		Escribir "La promocion aplica para los sabores:"
		Escribir "Coco: $400"
		Escribir "Nuez: $600"
		Escribir "Vainilla: $300"
		Escribir "¿Cual prefiere?"
		leer sabor
	Fin Si
	Segun sabor Hacer
		"coco":
			precio<-400
		"nuez":
			precio<-600
		"vainilla":
			precio<-300
		De Otro Modo:
			Si error != 1
			Escribir "Error, intente de nuevo"
			error=2
			Fin si
	Fin Segun
	sinDesc<-(cantidad*precio)
	ivaSD<-(sinDesc*16)/100
	precio<-precio-((precio*promocion)/100)
	subtotal<-cantidad*precio
	iva<-(subtotal*16)/100
	totalSD<-sinDesc+ivaSD
	total<-subtotal+iva
	Si error==0 Entonces
		Escribir "---------------------------"
		Escribir "Sabor: ",sabor, ", Cantidad: ",cantidad,", Total sin descuento: ",totalSD
		Escribir "---------------------------"
		Escribir "Subtotal del pedido: $",subtotal
		Escribir "IVA (16% por ahora...): $",iva
		Escribir "---------------------------"
		Escribir "Total de su pedido: $",total
		Escribir "Gracias por preferirnos :D"
	Fin Si
FinProceso