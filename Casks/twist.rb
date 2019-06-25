cask 'twist' do
  version '1.6.13,6448'
  sha256 '3613cb658bef4c5c6483215ef5fb3847731a0b45fa386309f0f1eff6d891af65'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
