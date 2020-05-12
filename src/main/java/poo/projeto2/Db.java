package poo.projeto2;

import java.util.ArrayList;

public class Db {
    private static ArrayList<Cliente> clientes;
    private static ArrayList<Fornecedor> fornecedores;
    
    public static ArrayList<Cliente> getClientes() {
        if (clientes == null) {
            clientes = new ArrayList<>();
            Cliente cliente1 = new Cliente();
            cliente1.setAttributes("Cliente1", "99.999.999-99", "99.999.999-9", "cliente1@cliente.com", "(13) 3499-9999", "Av. Oswaldo Cruz, 999 - Boqueirão, Santos/SP");
            clientes.add(cliente1);
            
            Cliente cliente2 = new Cliente();
            cliente2.setAttributes("Cliente2", "22.222.222-22", "22.222.222-2", "cliente2@cliente.com", "(13) 3422-2222", "Av. Mal. Mallet, 95 - Forte, Praia Grande/SP");
            clientes.add(cliente2);
        }
        return clientes;
    }
    
    public static ArrayList<Fornecedor> getFornecedores() {
        if (fornecedores == null) {
            fornecedores = new ArrayList<>();
            Fornecedor fornecedor1 = new Fornecedor();
            fornecedor1.setAttributes("Fornecedor1", "Fornecedor1 ME", "99.999.999/0001-01", "fornecedor1@empresa.com", "(11) 3333-1111", "Av. Paulista, 754 - Consolação, São Paulo/SP");
            fornecedores.add(fornecedor1);
            
            Fornecedor fornecedor2 = new Fornecedor();
            fornecedor2.setAttributes("Fornecedor2", "Fornecedor2 S.A.", "22.222.222/0001-07", "fornecedor2@empresa.com", "(11) 2115-2132", "Av. Ibirapuera, 754 - Indianópolis, São Paulo/SP");
            fornecedores.add(fornecedor2);
        }
        return fornecedores;
    }
}
