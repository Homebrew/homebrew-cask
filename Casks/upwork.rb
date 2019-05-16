cask 'upwork' do
  version '5_2_3_717_7tq7l0sg49p0kixc'
  sha256 'a4588d607abd3e8616af117b962047238dfdfb4e0d85d21764ab4c011c479af9'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version}/Upwork.dmg"
  name 'Upwork'
  homepage 'https://www.upwork.com/'

  app 'Upwork.app'

  zap trash: [
               '~/Library/Application Support/Upwork',
               '~/Library/Caches/Upwork',
               '~/Library/Logs/Upwork',
               '~/Library/Saved Application State/com.upwork.upwork.savedState',
             ]
end
