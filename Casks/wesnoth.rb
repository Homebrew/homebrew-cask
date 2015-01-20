cask :v1 => 'wesnoth' do
  version '1.12'
  sha256 '603877e2acc7b867907a2f06a71d62fb7cbd0c0e39c5b29de207b78b2121e7e2'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/wesnoth/Wesnoth_#{version}.dmg"
  homepage 'http://wesnoth.org'
  license :oss

  app 'Wesnoth.app'
end
