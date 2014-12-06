# This migration comes from alchemy_spree (originally 20131029215548)
class AddSpreeFieldsToAlchemyCustomUserTable < ActiveRecord::Migration
  def up
    add_column Alchemy.user_class.table_name, :spree_api_key, :string, :limit => 48
    add_column Alchemy.user_class.table_name, :ship_address_id, :integer
    add_column Alchemy.user_class.table_name, :bill_address_id, :integer
  end
end