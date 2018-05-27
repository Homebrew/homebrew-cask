cask 'twist' do
  version '1.0.36,4338'
  sha256 '394104d95ee2a1fd93774215854774c0e8250efebf1521b3b8439b0e5ac1ba0d'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml',
          checkpoint: 'bf0b4e9d8387634cefce208d0744e977543470a6e4ae0aec3b73e30649ebff59'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
