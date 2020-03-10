cask 'timing' do
  version '2020.2'
  sha256 '3d1c41fd026327afe3cec412827a789ca00c16ba43af765c31e9991a1d8aa023'

  url 'https://timingapp.com/download/Timing.dmg'
  appcast 'https://timingapp.com/updates/timing2.xml'
  name 'Timing'
  homepage 'https://timingapp.com/'

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
