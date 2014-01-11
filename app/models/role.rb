class Role < ActiveRecord::Base

	belongs_to :task
	belongs_to :person
	belongs_to :status

	validates :task_id, :presence => true
	validates :person_id, :presence => true
	validates :status_id, :presence => true
	validates :title, :presence => true
end
