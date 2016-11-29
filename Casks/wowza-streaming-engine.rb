cask 'wowza-streaming-engine' do
  version '4.5.0'
  sha256 'ec747c293acb86728fcbbec51b94a7f05fffd9277ca8813718e094865a223d3d'

  url "https://www.wowza.com/downloads/WowzaStreamingEngine-#{version.dots_to_hyphens}/WowzaStreamingEngine-#{version}-osx-installer.dmg"
  appcast 'https://www.wowza.com/rss/wowzastreamingengineupdates.xml',
          checkpoint: '2e5195d54f038ead29f281c9e9e1eb47d5a2868e93e0dfa6c9d641c71b8cd184'
  name 'Wowza Streaming Engine'
  homepage 'https://www.wowza.com/products/streaming-engine'

  auto_updates true

  installer manual: "WowzaStreamingEngine-#{version}-osx-installer.app"

  uninstall script: {
                      executable: "/Applications/Wowza Streaming Engine #{version}/Wowza Streaming Engine Uninstall.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'text'],
                      sudo:       true,
                    }
end
