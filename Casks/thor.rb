cask 'thor' do
  version '1.5.0'
  sha256 '2a652d83f26b6db886c6835db03f5eb56ade489cb660e18633ac5d13ecddad57'

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
