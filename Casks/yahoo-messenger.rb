cask 'yahoo-messenger' do
  version '0.8.288'
  sha256 '5b9b55f9a044454cdffa599a0831d1391a208744866a8dd105d9001a754b0e9d'

  # yimg.com was verified as official when first introduced to the cask
  url "https://s.yimg.com/jd/desktop/#{version}/yahoo-messenger-#{version}-osx.zip"
  name 'Yahoo Messenger'
  homepage 'https://messenger.yahoo.com/'

  app 'Yahoo Messenger.app'
end
