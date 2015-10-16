cask :v1_1 => 'younited' do
  # todo: Cask may be deleted after October 1, 2015
  version :latest
  sha256 :no_check

  # secure.com is the official download host per the vendor homepage
  url 'https://download.sp.f-secure.com/younited/younited.dmg'
  name 'younited'
  homepage 'https://www.younited.com/en/home'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'younited.app'

  caveats do
    discontinued
  end
end
