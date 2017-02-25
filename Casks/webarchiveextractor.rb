cask 'webarchiveextractor' do
  version '0.2'
  sha256 'ff9d0debc9c718b58752c1c8163fea627e461238b7f315bdbe85329d427bd7f4'

  url "https://downloads.sourceforge.net/webarchivext/WebArchiveExtractor.#{version}.zip"
  appcast 'https://sourceforge.net/projects/webarchivext/rss',
          checkpoint: '6fac095518b79cf496e71a1929b8ea8a91aac73023e31a5c93d40605f56f916f'
  name 'Web Archive Extractor'
  homepage 'http://webarchivext.sourceforge.net/'

  app 'WebArchiveExtractor.app'
end
