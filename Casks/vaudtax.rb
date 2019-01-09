cask 'vaudtax' do
  version '2017'
  sha256 'bf2aca64ee441fc4628b90cc829f5bb2f4748bc5458ae0fb4ca923e96645d28e'

  url "https://vaudtax-dl.vd.ch/vaudtax#{version}/telechargement/mac/VaudTax_#{version}.dmg"
  name 'VaudTax'
  homepage 'https://www.vd.ch/themes/etat-droit-finances/impots/vaudtax/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app "VaudTax #{version}.app"
end
