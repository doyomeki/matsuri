source 'https://rubygems.org'
gem 'rails', '3.2.13'
gem 'therubyracer', :platforms => :ruby
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end
gem 'jquery-rails'
gem "haml-rails", ">= 0.4"
gem "bootstrap-sass", ">= 2.3.0.0"
gem "twitter-bootstrap-rails"
gem "devise", ">= 2.2.3" # 認証
gem "cancan", ">= 1.6.9" # 権限管理
gem "rolify", ">= 3.2.0" # 権限管理
gem "simple_form", ">= 2.1.0"
# Omniauth使う時にIDやSecretKeyを隠蔽するのに便利
gem "figaro", ">= 0.6.3"

group :test do
  gem "email_spec", ">= 1.4.0"
  gem "cucumber-rails", ">= 1.3.1", :require => false
  gem "launchy", ">= 2.2.0" # capybara使うときに必要
  gem "capybara", ">= 2.0.3"
  # preloaderのzeusをguardで有効にする(zeusはgem install zeusしておく)
  gem "database_cleaner", ">= 1.0.0.RC1" # テスト終了時にDBを綺麗にしてくれる
end

group :development do
  # gem 'sqlite3'
  gem "better_errors", ">= 0.7.2"
  gem "binding_of_caller", ">= 0.7.1", :platforms => [:mri_19, :rbx]
  gem "html2haml", ">= 1.0.1"
  gem "guard-bundler", ">= 1.0.0"
  gem "guard-cucumber", ">= 1.4.0"
  gem "guard-rails", ">= 0.4.0"
  gem "guard-rspec", ">= 2.5.2"
  gem "guard-zeus"
  # asset pipeline周りのログ出力を便利に
  gem "quiet_assets", ">= 1.0.2"
  # guard用ファイル監視
  gem "rb-inotify", ">= 0.9.0", :require => false # Linux
  gem "rb-fsevent", ">= 0.9.3", :require => false # Mac OS X
  gem "rb-fchange", ">= 0.0.6", :require => false # Windows
  gem "pry"
  gem "pry-doc"
  gem "pry-rails"
  gem "pry-debugger"
  gem "pry-remote"
  gem "pry-coolline"
  gem 'debugger'
end

group :test, :development do
  gem "rspec-rails", ">= 2.12.2"
  gem "factory_girl_rails", ">= 4.2.0"
  gem "rails-erd"
end

group :production do
  gem "mysql2"
end
