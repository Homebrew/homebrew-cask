class Webpquicklook < Cask
  url 'https://raw.github.com/emin/WebPQuickLook/master/WebpQuickLook.tar.gz'
  homepage 'https://github.com/emin/WebPQuickLook'
  version 'latest'
  no_checksum
  qlplugin 'WebpQuickLook.qlgenerator'
end
