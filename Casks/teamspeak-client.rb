cask 'teamspeak-client' do
  version '3.5.2'
  sha256 'b17c846c7d3292e95cb56476bced5975495744f061b0c2dde1a2b46852500fd2'

  # files.teamspeak-services.com/releases/client/ was verified as official when first introduced to the cask
  url "https://files.teamspeak-services.com/releases/client/#{version}/TeamSpeak#{version.major}-Client-macosx-#{version}.dmg"
  appcast 'https://versions.teamspeak.com/ts3-client-2'
  name 'TeamSpeak Client'
  homepage 'https://www.teamspeak.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app "TeamSpeak #{version.major} Client.app"
end
