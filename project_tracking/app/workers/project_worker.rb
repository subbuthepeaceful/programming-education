class ProjectWorker
  include Sidekiq::Worker
  def perform_project_match(project)
    # Some logic to go through user preferences and match newly created project
  end
end