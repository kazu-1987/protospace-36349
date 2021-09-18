class Comment < ApplicationRecord

  belongs_to :prototype
  belongs_to :user

  validates :committed!,       presence: true

  def change
    create_table :comment do |t|
      t.string     :content, presence: true
      t.references :prototype,  null: false, foreign_key: true
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
