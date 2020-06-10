cask 'telavox-flow' do
  version '1.101.1'
  sha256 '3961bf00bc387ce516506234ea3447413cb0e181705f6e8d89cc7d2aa94cad7c'

  # s3.eu-west-2.amazonaws.com/flow-desktop/ was verified as official when first introduced to the cask
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
