cask 'tvrenamer' do
  version '0.7.2'
  sha256 '6d7ba27e26cbad16287f85db0d1b2b621f5ffd5c9a2dad73f1b63421eb2f0373'

  # github.com/tvrenamer/tvrenamer was verified as official when first introduced to the cask
  url "https://github.com/tvrenamer/tvrenamer/releases/download/#{version}/TVRenamer-#{version}-osx64.zip"
  appcast 'https://github.com/tvrenamer/tvrenamer/releases.atom',
          checkpoint: '2bf2f27122580b34bb9c5d1c3c06ca9d6a629e09365b4db6ad5244573a6b8c18'
  name 'TVRenamer'
  homepage 'http://tvrenamer.org/'

  app "TVRenamer-#{version}.app"

  caveats do
    depends_on_java
  end
end
