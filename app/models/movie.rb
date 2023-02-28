class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  # before_destroy :check_for_bookmarks

  validates :title, uniqueness: true
  validates :title, presence: true
  validates :overview, presence: true

  # private

  # def check_for_bookmarks
  #   if bookmarks.count > 0
  #     errors.add_to_base("This movie has bookmarks. It can't be deleted.")
  #     false
  #   end
  # end
end
