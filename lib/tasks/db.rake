namespace :db do
  namespace :setup do
    task setup_dev: :environment do
      puts "## Rails db:setup ##"

      Rake::Task['db:create'].invoke
      Rake::Task['db:migrate'].invoke

      puts "## Rails db:setup completed"
    end
  end
end
