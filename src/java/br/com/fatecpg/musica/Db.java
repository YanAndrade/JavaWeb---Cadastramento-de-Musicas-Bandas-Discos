package br.com.fatecpg.musica;

import java.util.ArrayList;


public class Db {
    //contatos é o nome do arrayList
    //getContatos() é um metodo
    private static ArrayList<Dados> dados;
    public static ArrayList<Dados> getDados(){
            if(dados == null){
                dados = new ArrayList<>();
                dados.add(new Dados("musica1", "banda1", "disco1"));
                dados.add(new Dados("musica2", "banda2", "disco2"));
                dados.add(new Dados("musica3", "banda3", "disco3"));
            }
            return dados;
    }
    //metodo para inserir contato
    public static void  addDados(Dados dados){
        dados.add(dados);
    }
    //metodo para alterar contato
    public static void updateDados(int index, Dados dados){
        dados.set(index, dados);
    }
    //metodo para remover contato
    public static void remove(int index){
        dados.remove(index);
        
    } 
}
