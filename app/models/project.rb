class Project < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validate :past_due
  has_many :tasks, dependent: :destroy
  belongs_to :user

	def past_due
		if due_date <= Time.now
			errors.add(:due_date, "nothing in the past please")
		end
	end
end
