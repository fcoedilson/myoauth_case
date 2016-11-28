class AddColumnsToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :provider, :string
    add_column :usuarios, :uid, :string
    add_column :usuarios, :nome, :string
    add_column :usuarios, :sobrenome, :string
    add_column :usuarios, :sexo, :string
    add_column :usuarios, :foto_url, :string
  end
end
