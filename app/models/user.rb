class User < ApplicationRecord

  has_many :ideas, foreign_key: 'author_id'

end
