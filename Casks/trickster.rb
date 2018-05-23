cask 'trickster' do
  if MacOS.version <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.7'
    sha256 '88938097eaafff496e1705c08e288519e93bf36fc1d10fd9f55e8cb9bc6d4453'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss',
          checkpoint: 'c355b5d2c6ec4c7ea505df1f9b93f555779567a0355e2707e099aaaba8d4e983'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  depends_on macos: '>= :mountain_lion'

  app 'Trickster.app'
end
