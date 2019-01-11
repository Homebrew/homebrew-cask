cask 'twist' do
  version '1.6.3,5449'
  sha256 '9326bafe46ceef78206b984d0a1be74575acdc3f55b8e49f98ca3abcc99adb01'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
