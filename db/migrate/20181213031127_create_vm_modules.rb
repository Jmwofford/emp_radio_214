class CreateVmModules < ActiveRecord::Migration[5.2]
  def change
    create_table :vm_modules do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
