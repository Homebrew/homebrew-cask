cask 'twist' do
  version '1.0.37,4648'
  sha256 'b3130e1ca213d30e162bcec29bb75817928bcb395484d550eb50dcf561926090'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
