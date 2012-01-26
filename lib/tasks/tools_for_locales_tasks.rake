namespace :tools_for_locales do

  desc 'sort tokens in all locales'
  task :sort_tokens do
    Dir["config/locales/**/*.yml"].each do |file|
      puts file.to_s
    end
  end

end
