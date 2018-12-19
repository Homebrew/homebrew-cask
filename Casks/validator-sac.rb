cask 'validator-sac' do
  version '0.10.8'
  sha256 '1555a9d20fdd35398407cded18f2208ad28b9d4647dcf8eef320354e63556f15'

  url "https://habilis.net/download/Validator-SAC_#{version}.zip"
  appcast 'https://habilis.net/download/validator-sac.xml'
  name 'Validator S.A.C.'
  homepage 'https://habilis.net/validator-sac/'

  app 'Validator-SAC.app'
end
