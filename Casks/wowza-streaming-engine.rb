cask 'wowza-streaming-engine' do
  version '4.4.1'
  sha256 '2d87573f3aa0af2b23bbef9b327774ed83f6dea5de5c70d66a66545b7db693b4'

  url "https://www.wowza.com/downloads/WowzaStreamingEngine-#{version.dots_to_hyphens}/WowzaStreamingEngine-#{version}-osx-installer.dmg"
  appcast 'https://www.wowza.com/rss/wowzastreamingengineupdates.xml',
          checkpoint: '8bb015c2f19e8f3748ba1215434cd624f9508043108c45cb1ffe38eac3b1a51d'
  name 'Wowza Streaming Engine'
  homepage 'https://www.wowza.com/products/streaming-engine'
  license :commercial

  auto_updates true

  installer manual: "WowzaStreamingEngine-#{version}-osx-installer.app"

  uninstall script: {
                      executable: "/Applications/Wowza Streaming Engine #{version}/Wowza Streaming Engine Uninstall.app/Contents/MacOS/installbuilder.sh",
                      args:       ['--mode', 'text'],
                      sudo:       true,
                    }
end
