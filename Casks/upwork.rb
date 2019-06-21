cask 'upwork' do
  version '5.2.3.757,5_2_3_757_3idn3cdxmlq3m6d5'
  sha256 'd7da1baf90469e23cb3f23da0151a8b897126205998d67502f7f9440386d6800'

  url "https://updates-desktopapp.upwork.com/binaries/v#{version.after_comma}/Upwork.dmg"
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
