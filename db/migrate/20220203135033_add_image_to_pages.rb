class AddImageToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :comment, :string
  end
end
