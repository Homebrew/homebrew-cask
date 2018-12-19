cask 'twist' do
  version '1.6.2,5341'
  sha256 '63c0b12b69c8e55d251ebb457be9ab18447abe9f5655560e5878581e49b00dab'

  url "https://downloads.twistapp.com/mac/Twist-#{version.after_comma}.zip"
  appcast 'https://downloads.twistapp.com/mac/AppCast.xml'
  name 'Twist'
  homepage 'https://twistapp.com/'

  depends_on macos: '>= :el_capitan'

  app 'Twist.app'
end
