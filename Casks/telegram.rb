cask 'telegram' do
  version '2.99.1-96966'
  sha256 '62184604e6b85d36d9176ceb042b17776fb8a2117e800f542f0e04163ef9401b'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '50015d15f08b0c8888713677862e5775b8491900e45e05ff8e1b88a759d58ba1'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
