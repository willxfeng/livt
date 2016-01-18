Dir[File.join(Rails.root, 'db', 'seeds', '0*.rb')].sort.each { |seed| load seed }
