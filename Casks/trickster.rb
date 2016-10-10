cask 'trickster' do
  if MacOS.version <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.4.2'
    sha256 'afe5fcf0de994e6a993bf259da564783ed7c0619ad635c665ecf5d3067ba5049'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss',
          checkpoint: '0a6c6015159cd8037e6e3f9464d3ed10c9ec05aa3ea063d012913b90be2aa218'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  app 'Trickster.app'
end
