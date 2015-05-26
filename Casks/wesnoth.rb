cask :v1 => 'wesnoth' do
  version '1.12.2'
  sha256 '731bbe172b14b92e72c415193595de698614ddc282444755e8204d203366b5f7'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/wesnoth/Wesnoth_#{version}.dmg"
  name 'The Battle for Wesnoth'
  homepage 'http://wesnoth.org'
  license :gpl

  app 'Wesnoth.app'
end
