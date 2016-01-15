class Game < ActiveRecord::Base
  default_scope {order('created_at ASC')}

  def Game.search(search)
    where("category LIKE ?", "%#{search}%")
  end

end
