cask 'winds' do
  version '3.1.16'
  sha256 '8b69823278849f87a73f7573efe64d2b4fbdf94b8bb5d46d8a8f7be53d85cd74'

  # s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/winds-2.0-releases/releases/Winds-#{version}.dmg"
  appcast 'https://github.com/GetStream/Winds/releases.atom'
  name 'Winds'
  homepage 'https://getstream.io/winds/'

  app 'Winds.app'

  zap trash: [
               '~/Library/Application Support/Winds',
               '~/Library/Logs/Winds',
               '~/Library/Preferences/io.getstream.winds.plist',
               '~/Library/Saved Application State/io.getstream.winds.savedState',
             ]
end
