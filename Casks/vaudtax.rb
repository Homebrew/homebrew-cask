cask 'vaudtax' do
  version '2018'
  sha256 '6592a8cacd1c89feec0c2e72d9138623f6ebba572a8b9b2bfee76c077bda1d1d'

  url "https://vaudtax-dl.vd.ch/vaudtax#{version}/telechargement/mac/VaudTax_#{version}.dmg"
  name 'VaudTax'
  homepage 'https://www.vd.ch/themes/etat-droit-finances/impots/impots-pour-les-individus/remplir-ma-declaration-dimpot/vaudtax/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "VaudTax #{version}.app"
end
