cask 'winbox' do
  version '3.4'
  sha256 'a6d796bdbc2e28ecbb7e424202ea9e7c3389eac4fcbde082b8a33756c0c42731'

  url "http://joshaven.com/Winbox4Mac_#{version}.dmg"
  name 'Winbox4Mac'
  homepage 'http://joshaven.com/resources/tools/winbox-for-mac/'
  license :gratis

  app 'Winbox4Mac.app'
end
