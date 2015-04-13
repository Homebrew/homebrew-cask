class Hbc::Source::URI
  def self.me?(query)
    !!(query.to_s =~ URI.regexp)
  end

  attr_reader :uri

  def initialize(uri)
    @uri = uri
  end

  def load
    HOMEBREW_CACHE_CASKS.mkpath
    path = HOMEBREW_CACHE_CASKS.join(File.basename(uri))
    ohai "Downloading #{uri}"
    odebug "Download target -> #{path.to_s}"
    begin
      curl(uri, '-o', path.to_s)
    rescue Hbc::ErrorDuringExecution
      raise Hbc::CaskUnavailableError.new uri
    end
    Hbc::Source::PathSlashOptional.new(path).load
  end

  def to_s
    uri.to_s
  end
end
