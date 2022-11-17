class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, uniqueness: { scope: :list, message: 'Only one movie per list' }
  validates :comment, length: { minimum: 6 }
end


# Formulaire bookmark -> commentaire, le film sur lequel tu mets ce commentaire
# c'était trop bien pour le film Godfather
#
