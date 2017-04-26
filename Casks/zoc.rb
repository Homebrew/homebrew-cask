cask 'zoc' do
  version '7.13.2'
  sha256 '817f3697ebb9f30bef1402eff6287dccb6e35b14317e1921b73d185325497058'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
