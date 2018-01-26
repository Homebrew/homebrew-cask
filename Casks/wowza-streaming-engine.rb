cask 'wowza-streaming-engine' do
  version '4.7.3'
  sha256 '6a79b0d0361fceb613444c9406113b401e65bb65496f4b8e47911ba5fcceab05'

  url "https://www.wowza.com/downloads/WowzaStreamingEngine-#{version.dots_to_hyphens}/WowzaStreamingEngine-#{version}-osx-installer.dmg"
  appcast 'https://www.wowza.com/rss/wowzastreamingengineupdates.xml',
          checkpoint: 'e5021c818a36050359df80b733e009f1dce1aa3764c9510af263cdd975fccb32'
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
