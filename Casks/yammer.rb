cask 'yammer' do
  version '1.3.1'
  sha256 '8d4040d842a07543c2b8c85748f84d1c58d1e76380ae06a1c474b9d93d1646b8'

  # yammerdesktopapp.blob.core.windows.net/binaries/dist was verified as official when first introduced to the cask
  url "https://yammerdesktopapp.blob.core.windows.net/binaries/dist/darwin/x64/#{version}/Yammer-#{version}.dmg"
  name 'Yammer'
  homepage 'https://support.office.com/en-us/article/Yammer-for-Windows-and-Mac-50920c05-cbfc-4f11-8503-e20fb2e623a5'

  app 'Yammer.app'
end
