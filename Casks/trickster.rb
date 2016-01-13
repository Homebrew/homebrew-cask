cask 'trickster' do
  if MacOS.release <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.4.1'
    sha256 'e3369f481cca71a4efb6ff55bee47bd6d4c8726e2518a8f945e3fcb6605873b0'
  end

  url "http://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'http://dl.apparentsoft.com/trickster.rss',
          :sha256 => '7e1b52a044d9822e51fd3bd5256d484f1304299275a29d36b7992f7e9c0f7534'
  name 'Trickster'
  homepage 'http://www.apparentsoft.com/trickster/'
  license :commercial

  app 'Trickster.app'
end
