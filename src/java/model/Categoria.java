
package model;

import java.util.ArrayList;
import static model.Categoria.listaCategorias;

public class Categoria {
    
    private int idCategoria;
    private String nombreCategoria;
    private String detalleCategoria;
    public static ArrayList<Categoria> listaCategorias = new ArrayList<>();

    public Categoria() {
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombreCategoria() {
        return nombreCategoria;
    }

    public void setNombreCategoria(String nombreCategoria) {
        this.nombreCategoria = nombreCategoria;
    }

    public String getDetalleCategoria() {
        return detalleCategoria;
    }

    public void setDetalleCategoria(String detalleCategoria) {
        this.detalleCategoria = detalleCategoria;
    }

    public Categoria(String nombreCategoria, String detalleCategoria) {
        this.nombreCategoria = nombreCategoria;
        this.detalleCategoria = detalleCategoria;
    }

    private Categoria(int idCategoria, String nombreCategoria, String detalleCategoria) {
        this.idCategoria = idCategoria;
        this.nombreCategoria = nombreCategoria;
        this.detalleCategoria = detalleCategoria;
    }
    
    public void nuevaCategoria(String nombreCategoria, String detalleCategoria){
        
        int idMayor = 1;
        
        if(!listaCategorias.isEmpty()){
            
            for(Categoria listaCategoria : listaCategorias){
                if(listaCategoria.getIdCategoria()>idMayor){
                    idMayor = listaCategoria.getIdCategoria();
            }
            
        }
        idMayor++;
    }
    listaCategorias.add(new Categoria(idMayor, nombreCategoria, detalleCategoria));
    
    }   
    
    public void editarCategoria(Categoria categoria, int id){
        
        for (Categoria lista : listaCategorias) {
            
            if(lista.getIdCategoria() == id){
                lista.setNombreCategoria(categoria.getNombreCategoria());
                lista.setDetalleCategoria(categoria.getDetalleCategoria());
            }
            
        }
        
    }
    
}