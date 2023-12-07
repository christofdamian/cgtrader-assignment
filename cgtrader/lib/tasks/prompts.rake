require "csv"

namespace :prompts do
  desc "TODO"
  task import: :environment do

    Prompt.__elasticsearch__.create_index!
    Prompt.destroy_all
    CSV.foreach("data.csv", headers: true) do |row|
      Prompt.create(content: row["Prompt"])
    end
    Prompt.import
  end
end
