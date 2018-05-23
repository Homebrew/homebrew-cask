cask 'worksnaps-client' do
  version '1.1.20170828'
  sha256 'd537df5184a89094a83a48a892e8efc774f2c51b7fc1f429abc064f03a80a99f'

  # worksnaps-download.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://worksnaps-download.s3.amazonaws.com/WSClient-mac-10.9-#{version}.dmg"
  name 'Worksnaps Client'
  homepage 'https://www.worksnaps.net/www/'

  app 'Worksnaps Client.app'
end
