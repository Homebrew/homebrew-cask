cask 'timing' do
  version '2020.7'
  sha256 '2c70ec8c3ed98f3d363bc68e72a9999ea78e708875e82c13d092059b2bcb73ff'

  url "https://updates.timingapp.com/download/Timing-#{version}.dmg"
  appcast 'https://timingapp.com/updates/timing2.xml'
  name 'Timing'
  homepage 'https://timingapp.com/'

  auto_updates true

  app 'Timing.app'

  uninstall login_item: 'TimingHelper'

  zap trash: [
               '~/Library/Application Support/info.eurocomp.TimingHelper.InfoExtractorService',
               '~/Library/Application Support/info.eurocomp.Timing2/',
               '~/Library/Application Support/info.eurocomp.TimingHelper/',
               '~/Library/Caches/info.eurocomp.TimingHelper.InfoExtractorService',
               '~/Library/Caches/info.eurocomp.Timing2/',
               '~/Library/Caches/info.eurocomp.TimingHelper/',
               '~/Library/Preferences/info.eurocomp.TimingHelper.InfoExtractorService.plist',
               '~/Library/Preferences/info.eurocomp.Timing2.plist',
               '~/Library/Preferences/info.eurocomp.TimingHelper.plist',
             ]
end
