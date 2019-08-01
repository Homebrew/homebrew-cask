cask 'upwork' do
  version '5.2.3.763,5_2_3_763_hzp6dgwl5mhvzul3'
  sha256 'be08e93bba9ea97102eb0702d5d0f158d105d1b5f1b9ff95e6c17d22695269d2'

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
