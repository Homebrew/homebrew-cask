cask 'yammer' do
  version '2.0.0'
  sha256 'a85539e06ccf5f7eacd9fab7387a2e7df8cb091056d67d02f6f65248eec778b5'

  # yammerdesktopapp.blob.core.windows.net/binaries/dist was verified as official when first introduced to the cask
  url "https://yammerdesktopapp.blob.core.windows.net/binaries/dist/darwin/x64/#{version}/Yammer-#{version}.dmg"
  name 'Yammer'
  homepage 'https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5'

  app 'Yammer.app'
end
