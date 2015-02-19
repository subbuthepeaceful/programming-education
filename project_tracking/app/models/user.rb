require 'topical'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable

  has_and_belongs_to_many :topics

  include Utilities::Topical

  def full_name
    "#{first_name} #{last_name}"
  end

  def matching_projects
    matched_projects = []
    topics.each do |topic|
      Project.all.each do |project|
        if project.is_related_to?(topic.title)
          matched_projects << {project: project, topic: topic}
        end
      end
    end
    matched_projects
  end
end
