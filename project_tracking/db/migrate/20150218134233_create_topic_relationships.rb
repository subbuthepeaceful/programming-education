class CreateTopicRelationships < ActiveRecord::Migration
  def change
    create_table :projects_topics, id: false do |t|
      t.references :project
      t.references :topic
    end

    create_table :topics_users, id: false do |t|
      t.references :topic
      t.references :user
    end
  end
end
