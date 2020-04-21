cask 'telavox-flow' do
  version '1.98.1'
  sha256 '653b6648bd49a6f4f3d30a8b4b5f64a604d2844ed83362a4afdce42952700087'

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
