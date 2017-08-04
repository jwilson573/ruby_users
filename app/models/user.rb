class User < ActiveRecord::Base
    validates :first_name, :last_name, presence: true, 
    length: { minimum: 2,
              too_short: "Name must be at least %{count} characters." 
            }
    validates_numericality_of :age, on: :create, greater_than_or_equal_to: 10, less_than_or_equal_to: 150, only_integer: true
end
