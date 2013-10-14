class AddAuthorToApps < ActiveRecord::Migration
  def change
    add_column app :apps, :author, :string
  end
end
