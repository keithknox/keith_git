class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.belongs_to :user
      t.belongs_to :subject
      t.string :question
      t.string :answer
      t.boolean :correct
      t.boolean :incorrect
    end
  end
end
