cask :v1 => 'cloudapp' do
  version '3.2.0'
  sha256 'fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e'

  url "https://s3.amazonaws.com/downloads.getcloudapp.com/mac/CloudApp-#{version}.dmg"
  name 'CloudApp'
  homepage 'http://mameosx.sourceforge.net/'
  license : proprietary

  app 'CloudApp.app'
end
