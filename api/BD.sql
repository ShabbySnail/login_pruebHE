create database "bd_login_prueba";

\c bd_login_prueba;

create table usuario(
    id serial primary key,
    nombre varchar(100),
    email varchar(100),
    password varchar(100)
);

/*
Crear una tabla para los permisos de los usuarios

esta tabla debe tener los siguientes campos:

Campos

	id
	nombre_perfil_seguridad

Dashboard

	Ventas del mes
	Ventas del ano
	Ventas del dia por agente
	Ventas del mes por agente
	Top 5 Desplazamiento
	Inventario
	Mensajes desde la pagina
	Tareas agendadas

Ventas
  
   1 - Cotizaciones

	Ver contizaciones
	Descuentos
	Descuentos sin restriccion
	Crear cotizaciones
	Editar cotizaciones
	Generacion de pedidos
	Modificar precios
	Consultar cotizaciones de todos
	Acceso a cotizaciones expiradas

   2 - Margen de venta
	
	Consultar reporte de margen de ventas

   3 - Reporte de ventas

	Consultar reporte de ventas

   4 - Tipo de cambio
	
	Ver tipos de cambio
	Capturar tipos de cambio
	Eliminar tipo de cambio

   5 - Cobranza

	Ver cobranza
	Mover a cuenta
	Extender fecha
	
   6 - Caja general

	Ver movimientos
	Mover a cuenta
	Mover a cobranza

   7 - Surtir pedidos

	Surtido de pedidos
	Consultar surtido de pedidos
	Surtir pedido
	Consultar surtido de todos
	Abrir pedidos surtidos

   8 - pedidos

	Ver pedidos
	Capturar formas de pago
	Surtir pedido
	Cancelar pedido
	Procesar pedido
	Guardar pedido
	Cancelacion de pedido
	Consultar pedido de todos

   9 - Facturacion

	Reporte de facturas
	Facturar pedido
	Consultar notas de credito
	Consultar complementos de pago
	Generar notas de credito
	Generar Complemento de pago

   10 - Reporte de cobranza
	
	Consultar el reporte de cobranza

Punto de venta

   1 - Ventas

	Punto de venta
	Nueva venta
	Registrar pago
	Entrada de efectivo
	Salida de efectivo
	Nuevo cliente
	Editar cliente
	Eliminar cliente
	Adeudo del cliente
	Reporte de ventas
	Corte de ventas
	Consultas, Detalles, ventas y cortes
	Cancelar ticket
	Facturar ticket
	Eliminar venta
	Devolucion de ticket
	Abrir ticket de pago

   2 - Reportes

	Cortes de caja
	Reporte de ventas
	Corte de ventas general
clientes

   1 - Listado de clientes
	
	Consultar lista de clientes
	Alta de nuevo cliente
	Editar cliente (Completo)
	Editar cliente (Limitado)
	Eliminar cliente
	Consultar Credito
	Consultar estado de cuenta
	Acceso a todos los clientes
	Cambiar vendedor
	
   2 - Lista de precios

	Ver listas de precios
	Crear lista de precios
	Editar lista de precios
	Eliminar lista de precios

   3 - Reporte de ventas de clientes

	Ver reporte de venta de clientes

   4 - Estado de cuenta

	Ver estado de cuenta
	Ver detalle
	Capturar pagos
	Imprimir ticket de abono
	Cancelar ticket de abono

   5 - Catalogo de mercados

	Consultar catalogo de mercados
	Crear nuevo mercado
	Editar mercado
	Eliminar mercado

vendedores

   1 - Vendedores

	Consultar vendedores
	Crear nuevo vendedor
	Editar vendedor
	Eliminar vendedor

   2 - Registro de visitas

	Consultar registro de visitas
	Registrar visitas
	Eliminar visita

   3 - Comisiones

	Consultar comisiones
	Crear nueva comision
	Editar comision
	Eliminar comisiones

   4 - Reporte de comisiones

	Consultar reporte de comisiones

   5 - Reporte de cliente

	Consultar el reporte de clientes
Productos

   1 - Productos
	
	Ver catalogo de productos
	Modificar inventarios
	Modificar precio
	Modificar costo
	Modificar informacion adicional
	alta de nuevos productos
	Editar productos
	Eliminar productos
	Consultar productos desactivados
	Record Venta Producto
	Inventario inicial en alta
	Actualizar precios y costos por Marca

   2 - Marcas

	Ver catalogo de marcas
	Crear nueva marca
	Editar marca
	Eliminar marca

   3 - Proveedores

	Ver catalogo de proveedores
	Crear nuevo proveedor
	Editar proveedor
	Eliminar proveedor

   4 - Categorias

	Ver categoria
	Crear nueva categoria
	Editar categorias
	Eliminar categorias
	Crear y editar subCategorias

   5 - Descuentos

	Ver catalogo de descuentos
	Crear nuevos descuentos
	Editar descuentos
	Eliminar descuento

   6 - Margen de productos

	Consultar margen de productos
   
   7 - Insignias

	Ver catalogo de insignias
	Alta de nuevas insignias
	Editar insignias
	Eliminar insignias

Compras

   1 - Ordenes de compra

	Consultar ordenes de compra
	Crear nueva orden de compra
	Editar orden de compra
	Eliminar orden de compra
	Procesar orden de compra
	Cancelar orden de compra
	Recibir mercancia
Inventario

   1 - Entradas de almacen

	Consultar entradas de almancen
	Crear nueva entrada de almacen
	Editar entradas de almacen
	Eliminar entradas de almancen
	Catalogo de motivos de entrada
	Agregar motivo de entrada
	Modificar motivo de entrada
	Eliminar motivo de entrada
	Usar motivos de entrada clase 1
	Usar motivos de entrada clase 2
	Usar motivos de entrada clase 3

   2 - Reporte de inventario

	Consultar el reporte de inventario

   3 - Salidas de almacen

	Consultar salidas de almacen
	Agregar salida manual
	Eliminar salida
	Catalogo de motivos de salida
	Agregar motivo de salida
	Modificar motivo de salida
	Eliminar motivo de salida
	Usar motivos de salida clase 1
	Usar motivos de salida clase 2
	Usar motivos de salida clase 3

   4 - Transferencias entre almacenes

	Consultar transferencias
	Autorizar
	Rechazar
	Surtir
	Recibir
	Crear nuevas tranferencias
	Editar transferencias
	Eliminar tranferencias

   5 - Reporte de inventario x almacen

	Consultar Reporte de inventario x almacen

   6 - Logistica

	Logistica

Bancos

   1 - Bancos

	Consutar Catalogo de bancos
	Crear nuevo banco
	Editar banco
	Eliminar banco

   2 - Cuentas bancarias

	Consultar cuentas bancarias
	Crear cuentas bancarias
	Editar cuentas bancarias
	Eliminar cuentas bancarias
	Consultar estado de cuentas

   3 - Salidas
	
	Consultar salidas
	Crear nuevas salidas
	Editar salidas
	Eliminar salidas

   4 - Entradas

	Consultar entradas
	Crear nuevas entradas
	Editar entradas
	Eliminar entradas
	
   5 - Tranferencias

	Consultar tranferencias
	Crear nuevas tranferencias
	Eliminar tranferencias

Nominas

   1 - Empleados

	Ver el catalogo de empleados
	Agregar nuevo empleado
	Editar empleado
	Eliminar empleado

   2 - Comprobantes Emitidos

   3 - Nuevo comprobante

   4 - Catalogos

	Consultar el catalogo de departamentos
	Crear un nuevo departamento
	Editar un departamento
	Eliminar un departamento
	Consultar catalogo de puestos de trabajo
	Crear nuevo puesto de trabajo
	Editar puesto de trabajo
	Eliminar puesto de trabajo
	Consultar regimenes de contratacion
	Crear nuevo regimen de contratacion
	Editar regimen de contratacion
	Eliminar regimen de contratacion
	Consultar tipos de contratos
	Crear nuevo tipos de contratos
	Editar tipos de contratos
	Eliminar tipos de contratos
	Consultar tipos de jornadas
	Crear nuevo tipo de jornanda
	Editar tipo de jornanda
	Eliminar tipo de jornada
  
Configuracion


   1 - Configuracion

	Modificar configuraciones
	
   2 - Importacion de datos

	Importar productos

   3 - Envios

	Consultar tipos de datos
	Consultar las condiciones de envio
	Crear paquetes de envio
	Consultar paquetes de envio
	Crear costos de envio
	Consultar costos de envio

Pagina Web

   1 - Notificaciones

	Ver notificaciones
	Cambiar estatus de notificaciones



*/

CREATE TABLE security_permissions (
    permission_id SERIAL PRIMARY KEY,
    security_profile_id INTEGER,
    ventas_del_mes BOOLEAN,
    ventas_del_ano BOOLEAN,
    ventas_del_dia_por_agente BOOLEAN,
    ventas_del_mes_por_agente BOOLEAN,
    top_5_desplazamiento BOOLEAN,
    inventario BOOLEAN,
    mensajes_desde_la_pagina BOOLEAN,
    tareas_agendadas BOOLEAN,
    cotizaciones BOOLEAN,
    ver_cotizaciones BOOLEAN,
    descuentos BOOLEAN,
    descuentos_sin_restriccion BOOLEAN,
    crear_cotizaciones BOOLEAN,
    editar_cotizaciones BOOLEAN,
    generacion_de_pedidos BOOLEAN,
    modificar_precios BOOLEAN,
    consultar_cotizaciones_de_todos BOOLEAN,
    acceso_a_cotizaciones_expiradas BOOLEAN,
    margen_de_venta BOOLEAN,
    consultar_reporte_de_margen_de_ventas BOOLEAN,
    reporte_de_ventas BOOLEAN,
    consultar_reporte_de_ventas BOOLEAN,
    tipo_de_cambio BOOLEAN,
    ver_tipos_de_cambio BOOLEAN,
    capturar_tipos_de_cambio BOOLEAN,
    eliminar_tipo_de_cambio BOOLEAN,
    cobranza BOOLEAN,
    ver_cobranza BOOLEAN,
    mover_a_cuenta BOOLEAN,
    extender_fecha BOOLEAN,
    caja_general BOOLEAN,
    ver_movimientos BOOLEAN,
    mover_a_cuenta_caja_general BOOLEAN,
    mover_a_cobranza_caja_general BOOLEAN,
    surtir_pedidos BOOLEAN,
    surtido_de_pedidos BOOLEAN,
    consultar_surtido_de_pedidos BOOLEAN,
    surtir_pedido BOOLEAN,
    consultar_surtido_de_todos BOOLEAN,
    abrir_pedidos_surtidos BOOLEAN,
    pedidos BOOLEAN,
    ver_pedidos BOOLEAN,
    capturar_formas_de_pago BOOLEAN,
    surtir_pedido BOOLEAN,
    cancelar_pedido BOOLEAN,
    procesar_pedido BOOLEAN,
    guardar_pedido BOOLEAN,
    cancelacion_de_pedido BOOLEAN,
    consultar_pedido_de_todos BOOLEAN,
    facturacion BOOLEAN,
    reporte_de_facturas BOOLEAN,
    facturar_pedido BOOLEAN,
    consultar_notas_de_credito BOOLEAN,
    consultar_complementos_de_pago BOOLEAN,
    generar_notas_de_credito BOOLEAN,
    generar_complemento_de_pago BOOLEAN,
    reporte_de_cobranza BOOLEAN,
    consultar_reporte_de_cobranza BOOLEAN,
    punto_de_venta BOOLEAN,
    nueva_venta BOOLEAN,
    registrar_pago BOOLEAN,
    entrada_de_efectivo BOOLEAN,
    salida_de_efectivo BOOLEAN,
    nuevo_cliente BOOLEAN,
    editar_cliente BOOLEAN,
    eliminar_cliente BOOLEAN,
    adeudo_del_cliente BOOLEAN,
    consultar_ventas BOOLEAN,
    consultar_cortes BOOLEAN,
    cancelar_ticket BOOLEAN,
    facturar_ticket BOOLEAN,
    eliminar_venta BOOLEAN,
    devolucion_de_ticket BOOLEAN,
    abrir_ticket_de_pago BOOLEAN,
    corte_de_caja BOOLEAN,
    reporte_de_ventas BOOLEAN,
    reporte_de_corte_de_caja BOOLEAN,
    reporte_de_ventas_general BOOLEAN,
    consultar_lista_de_clientes BOOLEAN
    alta_de_nuevo_cliente BOOLEAN
    editar_cliente_completo BOOLEAN
    editar_cliente_
);