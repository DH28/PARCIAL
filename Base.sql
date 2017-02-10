CREATE DATABASE ventas

CREATE TABLE venta(
  idventa int AUTO_INCREMENT PRIMARY KEY,
  fechaventa date
)

CREATE TABLE producto( 
  idproducto int AUTO_INCREMENT PRIMARY key, 
  descripcion varchar(50), 
  stock int, 
  preciounitario float(18,2) 
)

CREATE TABLE detalleventa(
  idventa int,
  idproducto int,
  cantidad int,
  preciounitario float(18,2),
  descuento float(18,2),
    FOREIGN KEY (idventa) REFERENCES venta(idventa),    
    FOREIGN KEY (idproducto) REFERENCES producto(idproducto)
)