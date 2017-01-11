cask 'trickster' do
  if MacOS.version <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.6'
    sha256 'e3e3e93da2f9e1743cf597633c5443cb59f75ac8938db4dcc14b2554126cb986'
  end

  url "https://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'https://dl.apparentsoft.com/trickster.rss',
          checkpoint: '83ad3c8336c908829948296e96ad2095d0655965080a72aafdf110129e2dfd98'
  name 'Trickster'
  homepage 'https://www.apparentsoft.com/trickster/'

  app 'Trickster.app'
end
