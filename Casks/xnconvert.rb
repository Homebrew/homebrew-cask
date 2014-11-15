cask :v1 => 'xnconvert' do
  version :latest
  sha256 :no_check

  url 'http://download.xnview.com/XnConvert-mac-x64.tgz'
  homepage 'http://www.xnview.com/en/xnconvert/'
  license :unknown

  app 'XnConvert.app'
end
