cask 'teamspeak-client' do
  version '3.3.0'
  sha256 '86e4dd0f05662517ab5f0cc4dcd3c6310b3293b67a4f26447255e9b64145cbcc'

  # files.teamspeak-services.com/releases/client was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  depends_on macos: '>= :sierra'

  app "TeamSpeak #{version.major} Client.app"
end
