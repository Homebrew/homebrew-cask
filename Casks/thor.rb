cask 'thor' do
  version '1.3.1'
  sha256 'f0b763e0128ffba40464884221f780bb16a9c9e47a4143e99d7eaf52a72fec58'

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  appcast 'https://github.com/gbammc/Thor/releases.atom'
  name 'Thor'
  homepage 'https://github.com/gbammc/Thor/'

  auto_updates true

  app 'Thor.app'

  uninstall quit: 'me.alvinzhu.Thor'

  zap trash: [
               '~/Library/Application Scripts/me.alvinzhu.Thor',
               '~/Library/Containers/me.alvinzhu.Thor',
             ]
end
