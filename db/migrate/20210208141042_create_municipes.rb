class CreateMunicipes < ActiveRecord::Migration[6.1]
  def change
    create_table :municipes do |t|
      t.string :nome_completo, null: false
      t.string :cpf, null: false
      t.string :email, null: false
      t.date :data_nascimento, null: false
      t.string :telefone, null: false
      t.string :foto, null: false
      t.string :status, null: false

      t.timestamps
    end
  end
end
