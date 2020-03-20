cask 'teamspeak-client' do
  version '3.5.0'
  sha256 'e6faf6c8d6c455df0a63ab317f769024aa5af12a74b7888fe1c40ca907f3305f'

  # files.teamspeak-services.com/releases/client was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "TeamSpeak #{version.major} Client.app"
end
