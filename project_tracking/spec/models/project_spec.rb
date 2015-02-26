require 'rails_helper'

RSpec.describe Project, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "should find Projects by keyword in the title" do
    create(:project)
    create(:project, :java_project)
    keywords = "Project"
    results = Project.search(keywords, :title)
    expect(results.size).to eq 2
  end

  it 'should find Projects by keyword in the description' do 
    create(:project)
    create(:project, :java_project)
    keywords = "java"
    results = Project.search(keywords, :description)
    expect(results.size).to eq 1

    java_project = Project.find_by_title("Java Project")
    expect(results.include?(java_project)).to be true
  end

  it 'should find Projects by keyword in both title and description' do 
    create(:project)
    create(:project, :java_project)
    create(:project, :ecommerce_project)
    create(:project, :nodejs_project)

    keywords = "Crazy"
    results = Project.search(keywords, :title, :description)
    expect(results.size).to eq 2
  end
end
