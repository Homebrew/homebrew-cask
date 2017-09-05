cask 'trim-enabler' do
  if MacOS.version <= :snow_leopard
    version '2.2'
    sha256 '3d9a7ad184435c05c4d8d5bf74484dcd9ac0f6eeb6a7a78e22709ca1557ff108'
    url 'https://cindori.org/trimenabler/TrimEnabler_old.dmg'
  elsif MacOS.version <= :mavericks
    version '3.6.3'
    sha256 'd07165d76714abf34537dc1dfd8219b501236c9b5a44a91065dede7ab79883fd'
    # amazonaws.com/cindori was verified as official when first introduced to the cask
    url 'https://s3.amazonaws.com/cindori/TrimEnabler.dmg'
  else
    version :latest
    sha256 :no_check
    url 'https://dl.devmate.com/org.cindori.TrimEnabler4/TrimEnabler.zip'
  end

  name 'Trim Enabler'
  homepage 'https://cindori.org/trimenabler/'

  app 'Trim Enabler.app'
end
