cask 'td-toolbelt' do
  version :latest
  sha256 :no_check

  url 'https://toolbelt.treasuredata.com/mac_dl'
  name 'Treasure Data Toolbelt'
  homepage 'https://toolbelt.treasuredata.com/'

  container type: :naked

  pkg 'td-toolbelt.pkg'

  preflight do
    system_command '/bin/mv', args: ['--', "#{staged_path}/mac", "#{staged_path}/td-toolbelt.pkg"]
  end

  uninstall pkgutil: 'com.td.toolbelt'

  zap pkgutil: 'org.ruby-lang.installer'
end
