cask 'twist' do
  version '1.5.5,4880'
  sha256 '8f24011f50023e0c45d3fd9071bf699906eab10ea627e05b427e4eea689cc15c'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
