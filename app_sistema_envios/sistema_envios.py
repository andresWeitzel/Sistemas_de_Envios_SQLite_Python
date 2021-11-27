import conexion as conn

db = conn.DB()
#result = db.ejecutar_consulta("SELECT * FROM clientes")
#print (result.fetchall())

#funcion para cargar datos 
def cargarCliente ():
    id = int(input("Ingrese el ID: "))
    cod_cliente = str (input("Ingrese el codigo del cliente: "))
    nombre = str (input("Ingrese el nombre: "))
    apellido = str (input("Ingrese el apellido: "))
    edad = int (input("Ingrese la edad: "))
    #if(len(id) >0 and len(cod_cliente) != "" and len(nombre) != "" and len(apellido) != "" and len(edad)!= ""):
    if(id >0 and  (edad) > 0 ): # Valido que estas 2 variables tengan datos
        sql = "INSERT INTO clientes(id,cod_cliente, nombre, apellido, edad) VALUES (?,?,?,?,?)"
        parametros = (id,cod_cliente, nombre, apellido, edad)
        db.ejecutar_consulta(sql,parametros)
        print ("Cargado exitosamente. ")
    else:
        print ("Cargo uno de los datos de manera incorrecta.")

#funcion para leer la tabla clientes
def leerCliente ():
    resultado = db.ejecutar_consulta ("SELECT * FROM Clientes")
    for data in resultado:
        print ("""
        ID: {}
        CODIGO DE CLIENTE: {}
        NOMBRE: {}
        APELLIDO: {}
        EDAD: {}""".format(data[0],data[1],data[2],data[3],data[4]))


#Funcion para modificar un campo de cliente
def modificarCliente ():
    id = int(input("Ingrese el ID: "))
    cod_cliente = str (input("Ingrese el codigo del cliente: "))
    nombre = str (input("Ingrese el nombre: "))
    apellido = str (input("Ingrese el apellido: "))
    edad = int (input("Ingrese la edad: "))
    if(id != 0 ): # valido que sea distinto a 0 el ID 
        sql = "UPDATE clientes SET cod_cliente=?, nombre=?, apellido=?, edad=? WHERE id =? "
        parametros = (cod_cliente, nombre, apellido, edad, id)
        db.ejecutar_consulta(sql,parametros)
        print ("Modificado! ")
      


#Funcion para eliminar un cliente validando que no ingrese un campo vacio
def eliminarCliente ():
    cod_cliente = str (input ("Ingrese el Codigo del cliente a eliminar: "))
    if (cod_cliente != " " ):
        sql = "DELETE FROM clientes WHERE cod_cliente =?"
        parametros = (cod_cliente, )
        db.ejecutar_consulta(sql,parametros)
        print ("Eliminado exitosamente! ")

def buscarCliente():
    nombre = str (input("Ingrese el nombre que desea buscar: "))
    if ((nombre) == nombre):
        sql = "SELECT * FROM clientes WHERE nombre LIKE ?"
        parametros = ('%{}%'.format(nombre),)
        busqueda = db.ejecutar_consulta(sql,parametros)
        for data in busqueda:
            print ("""
            +ID: {}
            +CODIGO DE CLIENTE: {}
            +NOMBRE: {}
            APELLIDO: {}
            EDAD: {}""".format(data[0],data[1],data[2],data[3],data[4]))
    else:
        print("nombre invalido")


#-----------------------------------------------------------------------------
#FUNCIONES PARA PRODCUTOS 
#funcion para cargar datos 
def cargarProducto ():
    id = int(input("Ingrese el ID: "))
    codigo = str (input("Ingrese el codigo del Producto: "))
    nombre = str (input("Ingrese el nombre del Producto: "))
    precio = int (input("Ingrese el precio: "))
    #if(len(id) >0 and len(cod_cliente) != "" and len(nombre) != "" and len(apellido) != "" and len(edad)!= ""):
    if(id >0 and  (precio) > 0 ): # Valido que estas 2 variables tengan datos
        sql = "INSERT INTO productos(id,codigo, nombre, precio) VALUES (?,?,?,?)"
        parametros = (id,codigo, nombre, precio)
        db.ejecutar_consulta(sql,parametros)
        print ("Cargado exitosamente. ")
    else:
        print ("Cargo uno de los datos de manera incorrecta.")

#funcion para leer la tabla clientes
def leerProducto ():
    resultado = db.ejecutar_consulta ("SELECT * FROM productos")
    for data in resultado:
        print ("""
        ID: {}
        CODIGO DEL PRODUCTO: {}
        NOMBRE DEL PRODUCTO: {}
        PRECIO: {}""".format(data[0],data[1],data[2],data[3]))


#Funcion para modificar un campo de cliente
def modificarProducto ():
    id = int(input("Ingrese el ID: "))
    codigo = str (input("Ingrese el codigo del Producto: "))
    nombre = str (input("Ingrese el nombre del Producto: "))
    precio = int (input("Ingrese el precio: "))
    if(id != 0 ): # valido que sea distinto a 0 el ID 
        sql = "UPDATE productos SET codigo=?, nombre=?, precio=? WHERE id =? "
        parametros = (codigo, nombre, precio, id)
        db.ejecutar_consulta(sql,parametros)
        print ("Modificado! ")
      


#Funcion para eliminar un cliente validando que no ingrese un campo vacio
def eliminarProducto ():
    codigo = str (input ("Ingrese el Codigo del cliente a eliminar: "))
    if (codigo != " " ):
        sql = "DELETE FROM productos WHERE codigo =?"
        parametros = (codigo, )
        db.ejecutar_consulta(sql,parametros)
        print ("Eliminado exitosamente! ")

def buscarProducto ():
    nombre = str (input("Ingrese el nombre que desea buscar: "))
    if ((nombre) == nombre):
        sql = "SELECT * FROM productos WHERE nombre LIKE ?"
        parametros = ('%{}%'.format(nombre),)
        busqueda = db.ejecutar_consulta(sql,parametros)
        for data in busqueda:
            print ("""
            +ID: {}
            +CODIGO DEL PRODUCTO: {}
            +NOMBRE DEL PRODUCTO: {}
            PRECIO: {}""".format(data[0],data[1],data[2],data[3]))
    else:
        print("nombre invalido")


'''
#COMENTADO PORQUE GENERAMOS UN MENU CON SUBMENU
while True: 
    print("")
    print("----------------------------------------------")
    print("Bienvenido al Sistema de Envios")
    
    print("----------------------------------------------")
    print ("\t\t1 - Cargar cliente")
    print ("\t\t2 - Ver clientes")
    print ("\t\t3 - Modificar cliente")
    print ("\t\t4 - Eliminar cliente")
    print ("\t\t5 - Buscar cliente")
    print ("\t\t6 - Salir ")
    print("----------------------------------------------")
    try:
        print("")
        option = int (input("Seleccione una opcion: "))
        if (option == 1):
            cargar()
        elif(option == 2):
            leer ()
        elif(option == 3):
            modificar ()
        elif(option == 4):
            eliminar ()
        elif(option == 5):
            buscar ()
        elif(option == 6):
            break
    except:
        print ("Error al elegir las opciones")
'''
while True: 

    print("")
    print("----------------------------------------------")
    print("Bienvenido al Sistema de Envios")
    
    print("----------------------------------------------")
    print ("\t\t1 - Opciones de Clientes")
    print ("\t\t2 - Opciones de Productos")
    print ("\t\t3 - Salir")
    
    print("----------------------------------------------")
    try:
        print("")
        option = int (input("Seleccione una opcion: "))
        if (option == 1) :
            while True:
                #option = int (input("Seleccione una opcion 2: "))
                print ("\t\t1 - Cargar cliente")
                print ("\t\t2 - Ver clientes")
                print ("\t\t3 - Modificar cliente")
                print ("\t\t4 - Eliminar cliente")
                print ("\t\t5 - Buscar cliente")
                print ("\t\t6 - Volver al menu principal")
                print ("\t\t7 - Salir ")
                option = int (input("Seleccione una opcion 2: "))
                try:
                    if (option == 1):
                        cargarCliente()
                    elif(option == 2):
                        leerCliente ()
                    elif(option == 3):
                        modificarCliente ()
                    elif(option == 4):
                        eliminarCliente ()
                    elif(option == 5):
                        buscarCliente ()
                    elif (option == 6):
                        break
                except:
                    print ("Error al elegir las opciones")
        elif (option == 2) :
            while True:
                #option = int (input("Seleccione una opcion 2: "))
                print ("\t\t1 - Cargar Producto")
                print ("\t\t2 - Ver Productos")
                print ("\t\t3 - Modificar Producto")
                print ("\t\t4 - Eliminar Producto")
                print ("\t\t5 - Buscar Producto")
                print ("\t\t6 - Volver al menu principal")
                print ("\t\t7 - Salir ")
                option = int (input("Seleccione una opcion 2: "))
                try:
                    if (option == 1):
                        cargarProducto ()
                    elif(option == 2):
                        leerProducto ()
                    elif(option == 3):
                        modificarProducto ()
                    elif(option == 4):
                        eliminarProducto ()
                    elif(option == 5):
                        buscarProducto ()
                    elif (option == 6):
                        break
                except:
                    print ("Error al elegir las opciones")
    except:
        print ("Error al elegir las opciones")