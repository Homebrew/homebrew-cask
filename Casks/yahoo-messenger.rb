cask 'yahoo-messenger' do
  version '0.8.231'
  sha256 '27f2a79da2567a452c6fc5123e36d668269ee3c9f64c7d4dab5ae9150a6e5000'

  # yimg.com was verified as official when first introduced to the cask
  url "https://s.yimg.com/jd/desktop/#{version}/yahoo-messenger-#{version}-osx.zip"
  name 'Yahoo Messenger'
  homepage 'https://messenger.yahoo.com/'

  app 'Yahoo Messenger.app'
end
