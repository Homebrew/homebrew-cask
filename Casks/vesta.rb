cask 'vesta' do
  version :latest
  sha256 :no_check

  # geocities.jp/kmo_mma was verified as official when first introduced to the cask
  url 'http://www.geocities.jp/kmo_mma/crystal/download/VESTA.dmg'
  name 'VESTA'
  homepage 'http://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'
end
