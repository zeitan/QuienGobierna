class Deputy < ActiveRecord::Base
  def self.find_by_state_and_district(state, district)
    where("district = #{district} AND state like '%#{state}%'")
  end
end
