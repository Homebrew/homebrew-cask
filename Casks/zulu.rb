cask 'zulu' do
  version '13.27.9-ca'
  sha256 'f9972f622c489d6cfab2593f67caf4e18d27ca0a4c8a5ef5d70176d9ea6520ff'

  url "https://cdn.azul.com/zulu/bin/zulu#{version}-jdk#{version.major}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :sierra'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
