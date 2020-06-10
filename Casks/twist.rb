cask 'twist' do
  version '1.6.22,7024'
  sha256 '703fb2682aabd59bbc06b33e3d562d46665453fd06807cd3a050c603b9884b11'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
