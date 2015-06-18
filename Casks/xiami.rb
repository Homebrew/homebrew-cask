cask :v1 => 'xiami' do
  version :latest
  sha256 :no_check

  url 'http://www.xiami.com/software/download?app=music_mac'
  name 'Xiami'
  homepage 'http://www.xiami.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Xiami.app'
end
