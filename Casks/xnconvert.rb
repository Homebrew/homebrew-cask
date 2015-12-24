cask 'xnconvert' do
  version :latest
  sha256 :no_check

  url 'http://download.xnview.com/XnConvert-mac-x64.tgz'
  name 'XnSoft XnConvert'
  homepage 'http://www.xnview.com/en/xnconvert/'
  license :gratis

  app 'XnConvert.app'
end
