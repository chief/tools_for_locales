$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tools_for_locales/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tools_for_locales"
  s.version     = ToolsForLocales::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of ToolsForLocales."
  s.description = "TODO: Description of ToolsForLocales."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
end
