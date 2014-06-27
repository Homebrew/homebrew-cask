class Texpad < Cask
  version '1.6.12'
  sha256 'bca8da9be6c2af599455eb9e936b50667f25b55a842af41e87f2e72e396c243e'
  
  url 'https://cloud.texpadapp.com/bundles/Texpad_1_6_12.zip'
  appcast 'https://www.texpadapp.com/static-collected/upgrades/texpadappcast.xml'
  homepage 'https://www.texpadapp.com/osx'

  link 'Texpad.app'
end
