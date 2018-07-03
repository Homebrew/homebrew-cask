cask 'twist' do
  version '1.0.36,4451'
  sha256 '04f86f2f03f2b674a14af213727858459440cd7c76c32aec42b4e82448cda16b'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
