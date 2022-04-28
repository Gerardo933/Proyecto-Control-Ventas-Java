package controlador;
import Conexion.conexionBD;
import entidad.Productos;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controladorProductos {
    //INTANCIAS
    conexionBD con = new conexionBD();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    //Instanciar la de servlet
    ModelAndView mav = new ModelAndView();
    
    //METODO PARA LA VISTA
    @RequestMapping(value = "AltaProductos.htm", method = RequestMethod.GET)
    public ModelAndView vistaAgregar(){
        mav.addObject(new Productos());
        mav.setViewName("AltaProductos");
        return mav;
    }     
    
    // metodo para agregar
    @RequestMapping("AltaProductos.htm")
    public ModelAndView Agregar(Productos p){
        String sql = "insert into productos(nombre,precio,cantidad) values(?,?,?)";
        this.jdbcTemplate.update(sql, p.getNombre(), p.getPrecio(), p.getCantidad());
        return new ModelAndView("redirect:/AltaProductos.htm");
    }
    
    String nombre;
    int codigo;
    List datos;
    
    //Metodo para listar;
    @RequestMapping("ListaGeneralProductos.htm")
    public ModelAndView  Listar(){
        String sql = "select * from productos";
        datos =  this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaGeneralProductos");
        return mav;
    
    }
    
    // metodo para la vista del formulario  editar
    @RequestMapping(value = "EditarProductos.htm", method = RequestMethod.GET )
    public ModelAndView vistaEditar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql = "select * from productos where codigo=" + codigo; 
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("EditarProductos");
        return mav;
    }
    
    // metodo para editar 
        @RequestMapping(value = "EditarProductos.htm", method = RequestMethod.POST )
        public ModelAndView Editar(Productos p){
        String sql = "update productos set nombre=?,precio=?,cantidad=? where codigo=?";
        this.jdbcTemplate.update(sql, p.getNombre(), p.getPrecio(), p.getCantidad(),codigo);
        return new ModelAndView("redirect:/ListaGeneralProductos.htm");        
        }
        
        // metodo para eliminar 
     @RequestMapping(value = "EliminarProductos.htm")
    public ModelAndView Eliminar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql = "delete from productos where codigo="+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/ListaGeneralProductos.htm");
    }
        
    
    //Buscar 
    @RequestMapping(value = "BuscaProductos.htm", method=RequestMethod.GET)
    public ModelAndView vistaResultadoBusqueda(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("codigo"));
        String sql= "select * from productos where codigo=" + codigo;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaGeneralProductos");
        return mav;
       
    }    

}
