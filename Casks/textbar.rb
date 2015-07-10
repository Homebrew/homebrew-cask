cask :v1 => 'textbar' do
  version '1.5.210'
  sha256 '04fa0e5972e98c625401aef4528eca35fd5dc55b5f274a5e32b97444bdbad573'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          :sha256 => 'ff29d21065e54f9e2f2fd5688146bb2109f00cdd492f08059dfd8c78a4de8249'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  app 'TextBar.app'
end
