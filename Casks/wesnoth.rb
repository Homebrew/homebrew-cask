cask :v1 => 'wesnoth' do
  version '1.10.7'
  sha256 'cdd7788e55e26c9d619b7c98b87db1b99c6a0fc9f525ddb63a6bd33923d94a6f'

  url "https://downloads.sourceforge.net/sourceforge/wesnoth/Wesnoth_#{version}.dmg"
  homepage 'http://wesnoth.org'
  license :oss

  app 'Wesnoth.app'
end
