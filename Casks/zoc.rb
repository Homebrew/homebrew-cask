cask 'zoc' do
  version '7.12.1'
  sha256 '7ea57820b339a024966f81c99ab222b75c96af7d007def6a15d5f4fecc416c7e'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
