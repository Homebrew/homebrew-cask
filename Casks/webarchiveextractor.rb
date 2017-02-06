cask 'webarchiveextractor' do
  version '0.2'
  sha256 'ff9d0debc9c718b58752c1c8163fea627e461238b7f315bdbe85329d427bd7f4'

  # The homepage subdomain is provided by SourceForge, and the download domain is the shared SourceForge one.
  url "https://downloads.sourceforge.net/webarchivext/WebArchiveExtractor.#{version}.zip"
  name 'WebArchiveExtractor'
  homepage 'http://webarchivext.sourceforge.net'

  app 'WebArchiveExtractor.app'
end
