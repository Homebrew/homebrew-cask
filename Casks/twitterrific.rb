cask :v1 => 'twitterrific' do
  version '4.5.1'
  sha256 '1b43504307e8a541c97a93ecd4c56bc443f66cdd622d319db965e7e0eb760b46'

  url "https://iconfactory.com/assets/software/twitterrific/Twitterrific-#{version}.zip"
  appcast 'http://iconfactory.com/appcasts/Twitterrific/appcast.xml',
          :sha256 => '0d8a09937e5ea81dc2f16ff23497077fecb6bc89c3266b47d0465a13776dd7ea'
  homepage 'http://twitterrific.com/mac'
  license :unknown

  app 'Twitterrific.app'

  zap :delete => '~/Library/Application Support/Twitterrific'
end
