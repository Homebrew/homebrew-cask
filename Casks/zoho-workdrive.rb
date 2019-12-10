cask 'zoho-workdrive' do
  version :latest
  sha256 :no_check

  url 'https://www.zoho.com/workdrive/downloads/ZohoWorkDrive.dmg'
  name 'Zoho WorkDrive'
  homepage 'https://www.zoho.com/workdrive/desktop-sync.html'

  app 'Zoho WorkDrive.app'
end
