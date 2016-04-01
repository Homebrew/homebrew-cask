cask 'textbar' do
  version '1.9.6'
  sha256 '014d37b9d4f7a1d9920776f998cb29b7642d397e6f5a2cb469ce5aea2776deb2'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: 'e45d9a5e9c6b0a2924821279ce93169b7d598d778a2e2fede9f630cc56b8b84a'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :x86_64

  app 'TextBar.app'
end
