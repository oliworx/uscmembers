class AddDetailsToUsers < ActiveRecord::Migration
  def change
      add_column :users, :member_id,          :string, null: false, default: "", :limit => 16
      add_column :users, :first_name,         :string, null: false, default: ""
      add_column :users, :family_name,        :string, null: false, default: ""
      add_column :users, :gender,             :string, null: false, default: "", :limit => 8
      add_column :users, :location,           :string, null: false, default: ""
      add_column :users, :street,             :string, null: false, default: ""
      add_column :users, :zipcode,            :string, null: false, default: "", :limit => 8
      add_column :users, :country,            :string, null: false, default: "", :limit => 3
      add_column :users, :phone,              :string, null: false, default: "", :limit => 16
      add_column :users, :iban,               :string, null: false, default: "", :limit => 34
      add_column :users, :bic,                :string, null: false, default: "", :limit => 11
      add_column :users, :bank,               :string, null: false, default: "", :limit => 32
      add_column :users, :mandate_reference,  :string, null: false, default: "", :limit => 32
      add_column :users, :status,             :string, null: false, default: "active", :limit => 8
      add_column :users, :comment,            :string, null: false, default: ""
      add_column :users, :fee,	 	          :decimal, null: false, default: 0.0      
  end
end
