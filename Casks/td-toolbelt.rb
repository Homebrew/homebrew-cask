cask 'td-toolbelt' do
  version :latest
  sha256 :no_check

  url 'http://toolbelt.treasuredata.com/mac'
  name 'Treasure Data Toolbelt'
  homepage 'https://toolbelt.treasuredata.com/'

  container type: :naked

  pkg 'td-toolbelt.pkg'

  preflight do
    system '/bin/mv', '--', "#{staged_path}/mac", "#{staged_path}/td-toolbelt.pkg"
  end

  uninstall pkgutil: 'com.td.toolbelt'

  zap pkgutil: 'org.ruby-lang.installer'
end
