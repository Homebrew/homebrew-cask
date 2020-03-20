cask 'telavox-flow' do
  version '1.96.0'
  sha256 '5862be3ab456ad9937b24a7455acd0b292dec6c82bceb0af08cff4b8b0a34fc0'

  # s3.eu-west-2.amazonaws.com/flow-desktop was verified as official when first introduced to the cask
  url "https://s3.eu-west-2.amazonaws.com/flow-desktop/Flow-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://deopappmanager.telavox.com/flow/download/mac/latest'
  name 'Telavox Flow'
  homepage 'https://telavox.com/en/apps/'

  auto_updates true

  app 'Flow.app'

  zap trash: [
               '~/Library/Application Support/Flow',
               '~/Library/Logs/Flow',
               '~/Library/Saved Application State/telavox.flow.desktop.savedState',
             ]
end
