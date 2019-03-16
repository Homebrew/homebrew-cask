cask 'twist' do
  version '1.6.9,6126'
  sha256 'd86b89c3d26b273a6ea9d2760f233a12888cabb1d90e7749ba16d0e5817ed88f'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
