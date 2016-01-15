class Game < ActiveRecord::Base
default_scope {order('created_at DESC')}

  def self.search(search)
    where("category LIKE ?", "%#{search}%")
  end

end
