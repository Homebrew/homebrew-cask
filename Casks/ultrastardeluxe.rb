cask :v1 => 'ultrastardeluxe' do
  version '1.1'
  sha256 '18e36476ec6994b1dd54e6272c08ceb86b10abf4984a18d834003e696153ca9b'

  url "https://downloads.sourceforge.net/sourceforge/ultrastardx/UltraStarDeluxe-#{version}.dmg"
  homepage 'http://ultrastardx.sourceforge.net/'
  license :oss

  app 'UltraStarDeluxe.app'
end
