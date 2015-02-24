FactoryGirl.define do
  factory :project do
    title "Ruby on Rails Project"
    description "This is a long project involving RoR"
    start_date "2014-02-24"
  end
  trait :java_project do
    title "Java Project"
    description "This is a long project involving java"
    start_date "2014-02-24"
  end
  trait :web_project do
    title "Web Project"
    description "This is a long project involving Web"
    start_date "2014-02-24"
  end
  trait :unknown_project do
    title "Mystery Project"
    description "This is a long project involving Unknowns"
    start_date "2014-02-24"
  end
  trait :ecommerce_project do
    title "Sell Something Project"
    description "This is a long project involving eCommerce"
    start_date "2014-02-24"
  end
  trait :sap_implementation_project do
    title "Enterprise Project"
    description "This is a long project involving SAP"
    start_date "2014-02-24"
  end
  trait :nodejs_project do
    title "Crazy Project"
    description "This is a long project involving NodeJS"
    start_date "2014-02-24"
  end

end
