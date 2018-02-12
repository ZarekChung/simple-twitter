class SetTweetCount < ActiveRecord::Migration[5.1]
  def change
    remove_column(:users, :tweets_count)
    add_column :users, :tweets_count, :integer, default: 0
  end
end