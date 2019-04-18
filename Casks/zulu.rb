cask 'zulu' do
  version '12.2.3,12.0.1'
  sha256 'd76ba8148a2d8f237f6089538cac1498a9bd37fe51855f7eb129ee93f8a54495'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_x64.dmg",
      referer: 'https://www.azul.com/downloads/zulu/zulu-mac/'
  name 'Azul Zulu Java Standard Edition Development Kit'
  homepage 'https://www.azul.com/downloads/zulu/zulu-mac/'

  depends_on macos: '>= :sierra'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}",
            rmdir:   '/Library/Java/JavaVirtualMachines'
end
