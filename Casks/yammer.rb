cask 'yammer' do
  version '3.4.4'
  sha256 'bd4333f19af3fe6b73d39f88b93cfce6fbaf1a7370f1a8addf34fe6b663db460'

  # yammerdesktopapp.blob.core.windows.net/binaries/dist was verified as official when first introduced to the cask
  url "https://yammerdesktopapp.blob.core.windows.net/binaries/dist/darwin/x64/#{version}/Yammer-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://aka.ms/yammer_desktop_mac'
  name 'Yammer'
  homepage 'https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5'

  app 'Yammer.app'
end
