require 'topical'

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
         # :confirmable

  has_and_belongs_to_many :topics

  # validates :password, 
  #           format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9]).+\z/,
  #                     message: "needs at least one upper case, one lower case and one number" }

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
