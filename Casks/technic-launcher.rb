cask :v1 => 'technic-launcher' do
  version '4.301'
  sha256 'f2d71968031a3ddf966e9c049ef03d264f8dff730acafe2ddbb3305461ebd19c'

  url 'http://launcher.technicpack.net/launcher4/301/TechnicLauncher.jar'
  name 'Technic Launcher'
  homepage 'http://www.technicpack.net/'
  license :gpl

  container :type => :naked
end
