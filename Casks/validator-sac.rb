cask :v1 => 'validator-sac' do
  version '0.10.4'
  sha256 '45ed10a41d49cdce8c048dae50f96abc78d9a45d5d0137d5757ed69de333a67f'

  url "http://habilis.net/download/Validator-SAC_#{version}.zip"
  homepage 'http://habilis.net/validator-sac/'
  license :unknown    # todo: improve this machine-generated value

  app 'Validator-SAC.app'
end
