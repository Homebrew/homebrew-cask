class Zooom < Cask
  version '2.5.0'
  sha256 '944d8c6f0869963ea0c0b11491d05eaa4357953072c43519f674fa81216e9e34'

  url 'http://software.coderage-software.com/zooom/Zooom_2.5.0.dmg'
  homepage 'http://coderage-software.com/zooom'

  install 'Zooom2.pkg'
  caveats do
    os_version_only '10.8', '10.7', '10.6', '10.5'
  end
end
