cask :v1 => 'younited' do
  version :latest
  sha256 :no_check

  url 'https://download.sp.f-secure.com/younited/younited.dmg'
  homepage 'http://www.younited.com/index.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'younited.app'
end
