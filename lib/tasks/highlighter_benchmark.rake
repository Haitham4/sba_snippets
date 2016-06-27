namespace :highlighter_benchmark do
  desc "start highlighting_benchmark lib"
  task start: :environment do
    puts("Hello, it worked")
    HighlightersBenchmark.new
  end

end
