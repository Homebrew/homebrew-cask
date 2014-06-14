class Xquartz < Cask
  url 'http://xquartz.macosforge.org/downloads/SL/XQuartz-2.7.6.dmg'
  homepage 'http://xquartz.macosforge.org/'
  appcast 'http://xquartz-dl.macosforge.org/sparkle/release.xml'
  version '2.7.6'
  sha256 '02aa3268af0bd7dcd5dfbc10d673f5c6834bba6371a928d2a3fc44a8039b194e'
  install 'XQuartz.pkg'

  after_install do
    Pathname.new(Dir.home).join('Library', 'Logs').mkpath
  end

  uninstall :quit => 'org.macosforge.xquartz.X11',
            :pkgutil => 'org.macosforge.xquartz.pkg'
end
