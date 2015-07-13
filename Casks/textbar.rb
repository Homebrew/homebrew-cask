cask :v1 => 'textbar' do
  version '1.7.19'
  sha256 'ddabb1e99e620fcd0a656023c0f01b86216a4e9758c1d488d9029fae17fbd4a4'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          :sha256 => 'ff29d21065e54f9e2f2fd5688146bb2109f00cdd492f08059dfd8c78a4de8249'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  depends_on :macos => '>= :mountain_lion'
  depends_on :arch => :x86_64

  app 'TextBar.app'
end
