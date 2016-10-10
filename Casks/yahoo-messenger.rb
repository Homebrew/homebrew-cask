cask 'yahoo-messenger' do
  version '0.8.109'
  sha256 '9fba0e4ffce6115cc9ece356f29ca34990aa7a789a5c89593a202b53fb96e148'

  # yimg.com was verified as official when first introduced to the cask
  url "https://s.yimg.com/jd/desktop/#{version}/yahoo-messenger-#{version}-osx.zip"
  name 'Yahoo Messenger'
  homepage 'https://messenger.yahoo.com'

  app 'Yahoo Messenger.app'
end
