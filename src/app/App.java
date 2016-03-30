package app;

import java.util.Date;
import model.Promocion;

public class App
{
    public static void main(String[] args)
    {
        System.out.println("" + daos.AbstractDAO.findAllByHQL("from Venta").size());
        
        
        Promocion promo = new Promocion(new Date(),new Date(),new Date(), 23.40, "pepino" , 2 );
        System.out.println("inserto: " + daos.AbstractDAO.saveOneNew(promo));
    }
}
