class Member < ApplicationRecord
  has_secure_password

  class << self
    def search(query)
      rel = order("number")
      if query.present?
        rel = rel.where("name LIKE ? OR full_name LIKE ?",
                        "%#{query}%", "%#{query}%")
      end
      rel
    end
  end
end
