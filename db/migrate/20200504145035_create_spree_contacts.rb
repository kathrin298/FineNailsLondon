class CreateSpreeContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :spree_contacts do |t|

      t.timestamps
    end
  end
end
