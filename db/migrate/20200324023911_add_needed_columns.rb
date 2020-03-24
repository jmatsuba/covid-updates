# frozen_string_literal: true

class AddNeededColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :kind, :string
    add_column :categories, :slug, :string
    add_column :categories, :priority, :integer
    add_column :resources, :date, :datetime
    add_column :resources, :description, :string
    add_column :resources, :video_id, :string
    add_column :resources, :start_time, :integer
    change_column :resources, :user_id, :integer, null: true
  end
end
