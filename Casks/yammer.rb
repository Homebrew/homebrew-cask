cask 'yammer' do
  version '3.1.0'
  sha256 'f9ef77c0e1a4a3cbcb87dc833288c7ad088d68d282ff44be5ee56ca2f270e228'

  # yammerdesktopapp.blob.core.windows.net/binaries/dist was verified as official when first introduced to the cask
  url "https://yammerdesktopapp.blob.core.windows.net/binaries/dist/darwin/x64/#{version}/Yammer-#{version}.dmg"
  name 'Yammer'
  homepage 'https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5'

  app 'Yammer.app'
end
