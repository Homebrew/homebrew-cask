cask 'wowza-streaming-engine' do
  version '4.6.0'
  sha256 '47364372ce212bc96996cc1cf46b7e50d0ef0194a080dc1a9437586397b87801'

  url "https://www.wowza.com/downloads/WowzaStreamingEngine-#{version.dots_to_hyphens}/WowzaStreamingEngine-#{version}-osx-installer.dmg"
  appcast 'https://www.wowza.com/rss/wowzastreamingengineupdates.xml',
          checkpoint: '50fd05c522e636a2de7151e3e9c74250b623cab046208d9d5f89756af978e19d'
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
