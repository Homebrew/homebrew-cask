cask 'trickster' do
  if MacOS.version <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.6'
    sha256 '73ddedc3e3622284f5111f9f85f0b8068355eeafe1f47c61990de1a3c0d86d91'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss',
          checkpoint: 'fd7806111308b4b506d92fbdbad2fb90661b0933a3e3c40896927eb7f1a693cf'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  app 'Trickster.app'
end
