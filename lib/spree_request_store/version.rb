module SpreeRequestStore
  module_function

  # Returns the version of the currently loaded SpreeRequestStore as a
  # <tt>Gem::Version</tt>.
  def version
    Gem::Version.new VERSION::STRING
  end

  module VERSION
    MAJOR = 3
    MINOR = 1
    TINY  = 4

    STRING = [MAJOR, MINOR, TINY].compact.join('.')
  end
end
