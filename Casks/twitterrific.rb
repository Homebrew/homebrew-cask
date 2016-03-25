cask 'twitterrific' do
  version '4.5.1'
  sha256 '1b43504307e8a541c97a93ecd4c56bc443f66cdd622d319db965e7e0eb760b46'

  # iconfactory.com is the official download host per the vendor homepage
  url "https://iconfactory.com/assets/software/twitterrific/Twitterrific-#{version}.zip"
  appcast 'https://iconfactory.com/appcasts/Twitterrific/appcast.xml',
          checkpoint: '8e2fde68cabcb874dd06ca8ff92b98cc07f759dca4c99828e25c35bb0074a289'
  name 'Twitterrific'
  homepage 'http://twitterrific.com/mac'
  license :commercial

  app 'Twitterrific.app'

  zap delete: [
                '~/Library/Application Support/Twitterrific',
                '~/Library/Caches/com.iconfactory.Twitterrific',
                '~/Library/Preferences/com.iconfactory.Twitterrific.plist',
              ]
end
