cask 'vnote' do
  version '1.14'
  sha256 'f6a576fcb14990ded7c58fdba9d8f97a8e26c2b47602270af2efb4ba0b6f25d8'

  # github.com/tamlok/vnote was verified as official when first introduced to the cask
  url "https://github.com/tamlok/vnote/releases/download/v#{version}/VNote_X64_#{version}.dmg"
  appcast 'https://github.com/tamlok/vnote/releases.atom',
          checkpoint: '5b65722928f42af4f8c1fb06a3258a60e9e266d89993dcdc5e21bb566d26923d'
  name 'VNote'
  homepage 'https://tamlok.github.io/vnote/'

  app 'VNote.app'
end
