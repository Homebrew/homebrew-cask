cask :v1 => 'yimello' do
  version :latest
  sha256 :no_check

  url 'http://yimello.adriencadet.com/assets/zip/yimello-mac.zip'
  homepage 'http://yimello.adriencadet.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Yimello.app'
end
