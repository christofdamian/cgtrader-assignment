require "csv"

namespace :prompts do
  desc "TODO"
  task import: :environment do

    Prompt.destroy_all

    CSV.foreach("data.csv", headers: true) do |row|
      puts row["Prompt"]
      Prompt.create(content: row["Prompt"])
    end
  end
end
