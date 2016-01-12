cask 'trim-enabler' do
  if MacOS.release <= :snow_leopard
    version '2.2'
    sha256 '3d9a7ad184435c05c4d8d5bf74484dcd9ac0f6eeb6a7a78e22709ca1557ff108'
    url 'https://cindori.org/trimenabler/TrimEnabler_old.dmg'
  else
    version '3.4.2'
    sha256 '423339ad1806701a87c50859e8b54c1011c4d9753c163f4b12d265424c55d314'
    # amazonaws.com is the official download host per the vendor homepage
    url 'https://s3.amazonaws.com/cindori/TrimEnabler.dmg'
  end

  name 'Trim Enabler'
  homepage 'https://www.cindori.org/software/trimenabler/'
  license :freemium

  depends_on :macos => '>= :snow_leopard'

  app 'Trim Enabler.app'
end
