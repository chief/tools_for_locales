require 'tools_for_locales'
require 'rails'
module ToolsForLocales
  class Railtie < Rails::Railtie
    #railtie_name :tools_for_locales

    rake_tasks do
      load "tasks/tools_for_locales_tasks.rake"
    end
  end
end
