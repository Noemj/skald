class Jarl < ActiveRecord::Base

  def self.generate
    Jarl.order("RANDOM()").first()
  end

end
