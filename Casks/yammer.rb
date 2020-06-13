cask 'yammer' do
  version '3.4.7'
  sha256 'c2ea97eb2e6fcb7d6a898ab37377a84bc6b2bef02f9353592b3d0f72d057be96'

  # yammerdesktopapp.blob.core.windows.net/binaries/dist/ was verified as official when first introduced to the cask
  url "https://yammerdesktopapp.blob.core.windows.net/binaries/dist/darwin/x64/#{version}/Yammer-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://aka.ms/yammer_desktop_mac'
  name 'Yammer'
  homepage 'https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5'

  app 'Yammer.app'
end
