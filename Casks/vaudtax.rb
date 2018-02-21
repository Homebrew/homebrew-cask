cask 'vaudtax' do
  version '2007'
  sha256 '4e6e6ad1e340bcb972e4de7bcb21d93fff608cfbb0d865a0967d85c80cca9013'

  url "https://vaudtax-dl.vd.ch/vaudtax#{version}/telechargement/mac/VaudTax_#{version}.dmg"
  name 'VaudTax 2017'
  homepage 'https://www.vd.ch/themes/etat-droit-finances/impots/vaudtax/'

  auto_updates true
  depends_on macos: '>= 10.10'

  app 'VaudTax 2017.app'
end
