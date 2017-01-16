cask 'zoc' do
  version '7.11.1'
  sha256 'c9e03fe57e5885cf398a9003657428d4d6f0680a6c1c26f33059c188de8caade'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
