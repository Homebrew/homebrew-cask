cask 'zoc' do
  version '7.14.2'
  sha256 '0e1325d802d1e31fc6e475f76217de17af5d1b85e35dc5fe5fa8788508bf944c'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '3b336ae41d1ddaab24304e09c259bd43a67038c25af5307b06a0bbaf258dba96'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
