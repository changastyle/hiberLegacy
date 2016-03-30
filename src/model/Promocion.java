package model;

import java.util.Date;
import javax.persistence.*;

@Entity @Table(name="Promociones") @PrimaryKeyJoinColumn(name="id")
public class Promocion extends Venta
{
    private Date desde;
    private Date hasta;

    public Promocion()
    {
        super();
    }
    public Promocion(Date desde, Date hasta, Date fechaDeCompra, double precio, String producto, int cantidad)
    {
        super(fechaDeCompra, precio, producto, cantidad);
        this.desde = desde;
        this.hasta = hasta;
    }

    public Date getDesde()
    {
        return desde;
    }

    public void setDesde(Date desde)
    {
        this.desde = desde;
    }

    public Date getHasta()
    {
        return hasta;
    }

    public void setHasta(Date hasta)
    {
        this.hasta = hasta;
    }

    
}
