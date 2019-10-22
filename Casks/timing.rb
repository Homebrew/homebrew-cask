cask 'timing' do
  version '2019.2'
  sha256 '670e526f8be290ac99dc98bfd3452a2442e9cac937092f7701f0eb49ec0d8a8f'

  url 'https://timingapp.com/download/Timing.app.zip'
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
