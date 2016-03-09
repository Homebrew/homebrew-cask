cask 'winbox' do
  version '3.0'
  sha256 '2924d7629524f835ae9b49e125edb44f9e8cda890e41609fab5db66a8d63f595'

  url "http://joshaven.com/Winbox4Mac_#{version}.dmg"
  name 'Winbox4Mac'
  homepage 'http://joshaven.com/resources/tools/winbox-for-mac/'
  license :gratis

  app 'Winbox4Mac.app'
end
