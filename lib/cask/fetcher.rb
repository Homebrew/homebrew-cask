class Cask::Fetcher
  def self.head(url)
    `curl --max-time 5 --silent --location --head '#{url}'`
  end
end
