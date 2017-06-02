cask 'wowza-streaming-engine' do
  version '4.7.0'
  sha256 '6e4dd64fe96d5419604f7f8a1bb093ae640be68b8dc559565633c720c4aa8e8f'

  url "https://www.wowza.com/downloads/WowzaStreamingEngine-#{version.dots_to_hyphens}/WowzaStreamingEngine-#{version}-osx-installer.dmg"
  appcast 'https://www.wowza.com/rss/wowzastreamingengineupdates.xml',
          checkpoint: '4becb760d87446cce0a4e0179c366cd282de92bc82ce02a844da64126f4cb000'
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
