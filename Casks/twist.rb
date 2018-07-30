cask 'twist' do
  version '1.0.37,4652'
  sha256 '0b1f27287dd2f57fb88722f2f684fdc0592acd5eadae18fd5f869034d97e2496'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
