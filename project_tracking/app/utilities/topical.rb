module Utilities
  module Topical
    def display_number_of_topics
      puts "#{topics.size} Topics"
    end

    def is_related_to?(topic_name)
      topics.map { |t| t.title }.include?(topic_name)
    end

    def pretty_print_topics
      topics.map { |t| t.title }.join(", ")
    end
  end
end