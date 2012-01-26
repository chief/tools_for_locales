require 'tools_for_locales'
require 'pry'

namespace :tools_for_locales do

  desc 'sort tokens in all locales'
  task :sort_tokens do
    require 'yaml'
    include ToolsForLocales

    Dir["config/locales/**/*.yml"].each do |file|
      puts "processing: #{file}"
      yaml = YAML::load(File.open(file))
      file = File.new(file, "w")
      begin
        file.puts sort_hash(yaml).to_yaml
        file.close
      rescue
        # revert
        puts '>> revert changes'
        file.puts yaml.to_yaml
        file.close
      end
    end
  end

end
