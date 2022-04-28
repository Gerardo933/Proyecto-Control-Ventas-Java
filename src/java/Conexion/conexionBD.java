
package Conexion;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author lopva
 */
public class conexionBD {
    
        public DriverManagerDataSource Conectar(){
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("org.postgresql.Driver");
        dataSource.setUrl("jdbc:postgresql://localhost:5432/mercado");
        dataSource.setUsername("postgres");
        dataSource.setPassword("root");
        return dataSource;
    }
}
