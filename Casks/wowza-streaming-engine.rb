cask 'wowza-streaming-engine' do
  version '4.7.5'
  sha256 '7639d7d06813309f15e42599e4bf68f5791835f4347231c5bedde27665cdbf15'

  url "https://www.wowza.com/downloads/WowzaStreamingEngine-#{version.dots_to_hyphens}/WowzaStreamingEngine-#{version}-osx-installer.dmg"
  appcast 'https://www.wowza.com/rss/wowzastreamingengineupdates.xml',
          checkpoint: 'fd46b182c5eef3d749469e28ebbe40c8b74bcf6b7e68d146654143f7ffbf22d0'
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
