cask :v1 => 'yimello' do
  version :latest
  sha256 :no_check

  url 'http://yimello.adriencadet.com/assets/zip/yimello-mac.zip'
  name 'Yimello'
  homepage 'http://yimello.adriencadet.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Yimello.app'
end
