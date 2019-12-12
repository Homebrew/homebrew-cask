cask 'timing' do
  version '2019.4'
  sha256 '93cf725f722bc07b6543c46184451982229a870e1005a20ce26dd83c456f7bd3'

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
