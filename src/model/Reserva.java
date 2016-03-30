package model;

import java.util.Date;
import javax.persistence.*;

@Entity  @Table( name = "Reserva") @PrimaryKeyJoinColumn(name="id")
public class Reserva extends Venta
{
    private Date fechaDeReserva;
    private String usuario;

    public Reserva()
    {
        super();
    }
    public Reserva(Date fechaDeReserva, String usuario, Date fechaDeCompra, double precio, String producto, int cantidad)
    {
        super(fechaDeCompra, precio, producto, cantidad);
        this.fechaDeReserva = fechaDeReserva;
        this.usuario = usuario;
    }

    public Date getFechaDeReserva()
    {
        return fechaDeReserva;
    }

    public void setFechaDeReserva(Date fechaDeReserva)
    {
        this.fechaDeReserva = fechaDeReserva;
    }

    public String getUsuario()
    {
        return usuario;
    }

    public void setUsuario(String usuario)
    {
        this.usuario = usuario;
    }

   
    
    
}
