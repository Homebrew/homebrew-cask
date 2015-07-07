cask :v1 => 'textbar' do
  version '1.5.210'
  sha256 '04fa0e5972e98c625401aef4528eca35fd5dc55b5f274a5e32b97444bdbad573'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  app 'TextBar.app'
end
