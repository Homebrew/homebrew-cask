cask 'vesta' do
  version '3.4.5'
  sha256 '6f75b55a46db1ebde062e346c15a56eabaff0e4fc0cad0e2035dc33de34c66bc'

  url "https://jp-minerals.org/vesta/archives/#{version}/VESTA.dmg"
  name 'VESTA'
  homepage 'https://jp-minerals.org/vesta/en/'

  app 'VESTA/VESTA.app'
end
