cask 'textbar' do
  version '1.7.95'
  sha256 '7fe84b1aa092bf37c51165c247b73e2e94e0ba0c6464f9d522666ff37dc35c3b'

  url "http://www.richsomerfield.com/apps/textbar/TextBar.app-#{version}.zip"
  appcast 'http://www.richsomerfield.com/apps/textbar/sparkle_textbar.xml',
          checkpoint: '639930c95ad623671b7f3eb3f7a330eaa2c2cf456c31109ecdac03685881833b'
  name 'TextBar'
  homepage 'http://www.richsomerfield.com/apps/'
  license :closed

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :x86_64

  app 'TextBar.app'
end
