Monologue.config do |config|
  config.site_name = "eBookstore Blog"
  config.site_subtitle = "Review book in the store"
  config.site_url = "http://example.com"

  config.meta_description = "This is my blog about..."
  config.meta_keyword = "music, fun"

  config.admin_force_ssl = false
  config.posts_per_page = 10
  config.preview_size = 1000

  # config.disqus_shortname = "my_disqus_shortname"
  config.disqus_shortname = "https-ebookstore-mustbecoder-c9users-io-1"
  # LOCALE
  config.twitter_locale = "en" # "fr"
  config.facebook_like_locale = "en_US" # "fr_CA"
  config.google_plusone_locale = "en"

  # config.layout               = "layouts/application"

  # ANALYTICS
  # config.gauge_analytics_site_id = "YOUR COGE FROM GAUG.ES"
  # config.google_analytics_id = "YOUR GA CODE"

  config.sidebar = ["latest_posts", "latest_tweets", "categories", "tag_cloud"]


  #SOCIAL
  #config.twitter_username = "myhandle"
  #config.facebook_url = "https://www.facebook.com/myhandle"
  #config.facebook_logo = 'logo.png'
  #config.google_plus_account_url = "https://plus.google.com/u/1/.../posts"
  #config.linkedin_url = "http://www.linkedin.com/in/myhandle"
  #config.github_username = "myhandle"
  #config.show_rss_icon = true

end