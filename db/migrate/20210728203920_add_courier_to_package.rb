class AddCourierToPackage < ActiveRecord::Migration[6.0]
  def change
    add_reference :packages, :courier, null: false, foreign_key: true
  end
end
