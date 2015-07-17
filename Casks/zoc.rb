cask :v1 => 'zoc' do
  version '7.05.1'
  sha256 'd422e69667a08c5a57d9037474c3eacc1874d8d6bdc0b7e90493c0133a8c4740'

  url "http://www.emtec.com/downloads/zoc/zoc#{version.gsub('.','')}.dmg"
  name 'ZOC'
  homepage 'http://www.emtec.com/zoc/'
  license :commercial

  app 'zoc7.app'
end
