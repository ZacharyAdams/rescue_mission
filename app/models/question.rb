class Question < ActiveRecord::Base
  has_many :answers
  belongs_to :user
  validates :title, presence: true, uniqueness: true, :length => { :minimum => 40}
  validates :body, presence: true, :length => { :minimum => 150}
end
