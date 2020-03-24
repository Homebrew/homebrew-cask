cask 'teamspeak-client' do
  version '3.5.1'
  sha256 'a36601e047a56ffa2d6e96736888c950e1b7af7fb62c867fcb48dc2abb062e61'

  # files.teamspeak-services.com/releases/client was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "TeamSpeak #{version.major} Client.app"
end
