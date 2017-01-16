cask 'trim-enabler' do
  if MacOS.version <= :snow_leopard
    version '2.2'
    sha256 '3d9a7ad184435c05c4d8d5bf74484dcd9ac0f6eeb6a7a78e22709ca1557ff108'
    url 'https://cindori.org/trimenabler/TrimEnabler_old.dmg'
  else
    version :latest
    sha256 :no_check
    # amazonaws.com/cindori was verified as official when first introduced to the cask
    url 'https://s3.amazonaws.com/cindori/TrimEnabler.dmg'
  end

  name 'Trim Enabler'
  homepage 'https://www.cindori.org/software/trimenabler/'

  app 'Trim Enabler.app'
end
