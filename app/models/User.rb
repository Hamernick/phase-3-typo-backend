class User < ActiveRecord::Base
    has_many :notes, dependent: :destroy
    has_many :notebooks, through: :notes

end