package controlador;
import Conexion.conexionBD;
import entidad.Vendedor;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class controladorVendedor {
    //INTANCIAS
    conexionBD con = new conexionBD();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    //Instanciar la de servlet
    ModelAndView mav = new ModelAndView();
    
    //METODO PARA LA VISTA
    @RequestMapping(value = "AltaVendedor.htm", method = RequestMethod.GET)
    public ModelAndView vistaAgregar(){
        mav.addObject(new Vendedor());
        mav.setViewName("AltaVendedor");
        return mav;
    }     
    
    // metodo para agregar
    @RequestMapping("AltaVendedor.htm")
    public ModelAndView Agregar(Vendedor p){
        String sql = "insert into vendedor(codigo,nombre,apellidos,sexo,fechaNac,celular) values(?,?,?,?,?,?)";
        this.jdbcTemplate.update(sql, p.getCodigo(), p.getNombre(), p.getApellidos(), p.getSexo(),p.getFechanac(),p.getCelular());
        return new ModelAndView("redirect:/AltaVendedor.htm");
    }
    
    String nombre;
    int codigo;
    List datos;
    
    //Metodo para listar;
    @RequestMapping("ListaGeneralVendedor.htm")
    public ModelAndView  Listar(){
        String sql = "select * from vendedor";
        datos =  this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaGeneralVendedor");
        return mav;
    
    }
    
    // metodo para la vista del formulario  editar
    @RequestMapping(value = "EditarVendedor.htm", method = RequestMethod.GET )
    public ModelAndView vistaEditar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("idvendedor"));
        String sql = "select * from vendedor where idvendedor=" + codigo; 
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("EditarVendedor");
        return mav;
    }
    
    // metodo para editar 
        @RequestMapping(value = "EditarVendedor.htm", method = RequestMethod.POST )
        public ModelAndView Editar(Vendedor p){
        String sql = "update vendedor set codigo=?,nombre=?,apellidos=?,sexo=?,fechanac=?,celular=? where idvendedor=?";
        this.jdbcTemplate.update(sql, p.getCodigo(), p.getNombre(), p.getApellidos(),p.getSexo(),p.getFechanac(),p.getCelular(),codigo);
        return new ModelAndView("redirect:/ListaGeneralVendedor.htm");        
        }
        
        // metodo para eliminar 
     @RequestMapping(value = "EliminarVendedor.htm")
    public ModelAndView Eliminar(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("idvendedor"));
        String sql = "delete from vendedor where idvendedor="+codigo;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/ListaGeneralVendedor.htm");
    }
        
    
    //Buscar 
    @RequestMapping(value = "BuscaVendedor.htm", method=RequestMethod.GET)
    public ModelAndView vistaResultadoBusqueda(HttpServletRequest request){
        codigo = Integer.parseInt(request.getParameter("idvendedor"));
        String sql= "select * from vendedor where idvendedor=" + codigo;
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("ListaVendedor");
        return mav;
       
    }    

}
