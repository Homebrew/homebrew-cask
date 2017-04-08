cask 'zoc' do
  version '7.13.0'
  sha256 '1424938212756240fb254d02dab629c263443734283ee6a8580d777704db4836'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
