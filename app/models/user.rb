class User < ApplicationRecord

  has_many :ideas, foreign_key: 'author_id'

  has_secure_password

end
