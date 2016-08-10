class Hbc::Source::URI
  def self.me?(query)
    !(query.to_s =~ URI.regexp).nil?
  end

  attr_reader :uri

  def initialize(uri)
    @uri = uri
  end

  def load
    Hbc.cache.mkpath
    path = Hbc.cache.join(File.basename(uri))
    ohai "Downloading #{uri}"
    odebug "Download target -> #{path}"
    begin
      curl(uri, "-o", path.to_s)
    rescue ErrorDuringExecution
      raise Hbc::CaskUnavailableError, uri
    end
    Hbc::Source::PathSlashOptional.new(path).load
  end

  def to_s
    uri.to_s
  end
end
