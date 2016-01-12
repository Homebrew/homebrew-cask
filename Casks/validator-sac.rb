cask 'validator-sac' do
  version '0.10.8'
  sha256 '1555a9d20fdd35398407cded18f2208ad28b9d4647dcf8eef320354e63556f15'

  url "https://habilis.net/download/Validator-SAC_#{version}.zip"
  appcast 'https://habilis.net/download/validator-sac.xml',
          :sha256 => '464269c6a5804202d81b59f7c1632f242aaf8007f8b0d0d442a8e5b58f698337'
  name 'Validator S.A.C.'
  homepage 'https://habilis.net/validator-sac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Validator-SAC.app'
end
