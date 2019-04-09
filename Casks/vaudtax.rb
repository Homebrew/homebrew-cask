cask 'vaudtax' do
  version '2018'
  sha256 '5daffb28efadf1bd9413f7280075d39c023b0750616908642bcbcb60d65061e6'

  url "https://vaudtax-dl.vd.ch/vaudtax#{version}/telechargement/mac/VaudTax_#{version}.dmg"
  name 'VaudTax'
  homepage 'https://www.vd.ch/themes/etat-droit-finances/impots/impots-pour-les-individus/remplir-ma-declaration-dimpot/vaudtax/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "VaudTax #{version}.app"
end
