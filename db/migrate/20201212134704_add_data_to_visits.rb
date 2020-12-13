class AddDataToVisits < ActiveRecord::Migration[6.0]
  def change
    add_column :visits, :data, :datetime
  end
end
