cask :v1 => 'younited' do
  version :latest
  sha256 :no_check

  url 'https://download.sp.f-secure.com/younited/younited.dmg'
  homepage 'http://www.younited.com/index.html'
  license :unknown

  app 'younited.app'
end
