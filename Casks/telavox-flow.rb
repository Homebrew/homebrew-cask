cask 'telavox-flow' do
  version '1.95.3'
  sha256 '827f767cee5ec10b4bb25c05c07850f02e3e65e3353824a2f4df5e87741f150b'

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
