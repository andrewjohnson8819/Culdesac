class Game < ActiveRecord::Base
  default_scope {order('created_at ASC')}
  belongs_to :user
  has_many :favorites
  has_many :users, through: :favorites

  def Game.search(search)
    where("category LIKE ?", "%#{search}%")
  end

end
