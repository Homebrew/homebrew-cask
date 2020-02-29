cask 'timing' do
  version '2020.1'
  sha256 '7dd2b63ba2b1a7c1a53d3556e6f35763b368dc9f83fba2f0cbc0f2bc5ce5f434'

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
