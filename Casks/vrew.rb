cask 'vrew' do
  version '0.4.22'
  sha256 'cb4d5fa942a56e409932783930d29d0f708627a22a691da9bf904d639f571d72'

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name 'vrew'
  homepage 'https://vrew.voyagerx.com/'

  app 'Vrew.app'

  zap trash: [
               '~/Library/Application Support/vrew',
               '~/Library/Preferences/com.voyagerx.vrew.plist',
             ]
end
