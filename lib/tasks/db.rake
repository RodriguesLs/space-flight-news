namespace :db do
  task update_articles: :environment do
    puts '## Get articles in progress ##'
    puts "=> Article.count (before): #{Article.count}"

    articles = HTTParty.get("https://api.spaceflightnewsapi.net/v3/articles")

    articles.each do |article|
      launches = article['launches']
      events = article['events']

      article.deep_transform_keys!(&:underscore)

      article.delete('launches')
      article.delete('events')

      @persisted_article = find_or_create_article(article)

      find_or_create_events(events) unless events.empty?
      find_or_create_launches(launches) unless launches.empty?
    end

    puts '## Articles updated ##'
    puts "=> Articles.count (after): #{Article.count}"
  end

  def find_or_create_article(article)
    persisted_article = Article.find_by(id: article['id'])

    if persisted_article
      persisted_article.update(article)

      return persisted_article.reload
    end

    Article.create!(article)
  end

  def find_or_create_launches(launches)
    launches.each do |launch|
      l = @persisted_article.launches.find_by(external_id: launch['id'])

      @persisted_article.launches.create(
        external_id: launch['id'],
        provider: launch['provider']
      ) unless l
    end
  end

  def find_or_create_events(events)
    events.each do |event|
      e = @persisted_article.events.find_by(external_id: event['id'])

      @persisted_article.events.create(
        external_id: event['id'],
        provider: event['provider']
      ) unless e
    end
  end
end
