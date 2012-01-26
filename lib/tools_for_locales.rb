require 'tools_for_locales/railtie' if defined?(Rails)

module ToolsForLocales

  def sort_hash(hash)
    hash = Hash[hash.sort]
    hash.inject({}) do |h, (key, value)|
      if value.is_a? Hash
        h[key] = sort_hash(value)
      else
        h[key] = value
      end
      h
    end
  end

end
