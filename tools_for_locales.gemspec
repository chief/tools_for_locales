$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tools_for_locales/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tools_for_locales"
  s.version     = ToolsForLocales::VERSION
  s.authors     = ["Giorgos Tsiftsis"]
  s.email       = ["giorgos.tsiftsis@gmail.com"]
  s.homepage    = "https://github.com/chief/tools_for_locales"
  s.summary     = "A collection of tools for handling locales in a rails project."
  s.description = "A collection of tools for handling locales in a rails project."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
end
