require 'topical'

class Project < ActiveRecord::Base
  has_and_belongs_to_many :topics

  include Utilities::Topical

  def who_am_i
    self
  end

  def self.find_fun_projects
    fun_projects = []

    Project.all.each do |p| 
      if p.is_related_to?("Ruby on Rails") and p.is_related_to?("BackboneJS")
        fun_projects << p   
      end
    end

    fun_projects
  end
end
