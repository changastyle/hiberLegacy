package model;

import java.util.Date;
import javax.persistence.*;

@Entity @Table(name = "Venta") @Inheritance(strategy=InheritanceType.JOINED)
public abstract class Venta
{
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private Date fechaDeCompra;
    private double precio;
    private String producto;
    private int cantidad;

    public Venta()
    {
    }
    public Venta(Date fechaDeCompra, double precio, String producto, int cantidad)
    {
        this.fechaDeCompra = fechaDeCompra;
        this.precio = precio;
        this.producto = producto;
        this.cantidad = cantidad;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public Date getFechaDeCompra()
    {
        return fechaDeCompra;
    }

    public void setFechaDeCompra(Date fechaDeCompra)
    {
        this.fechaDeCompra = fechaDeCompra;
    }

    public double getPrecio()
    {
        return precio;
    }

    public void setPrecio(double precio)
    {
        this.precio = precio;
    }

    public String getProducto()
    {
        return producto;
    }

    public void setProducto(String producto)
    {
        this.producto = producto;
    }

    public int getCantidad()
    {
        return cantidad;
    }

    public void setCantidad(int cantidad)
    {
        this.cantidad = cantidad;
    }
    
    
    
}
