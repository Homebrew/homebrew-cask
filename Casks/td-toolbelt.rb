class TdToolbelt < Cask
  version 'latest'
  sha256 :no_check

  url 'http://toolbelt.treasuredata.com/mac'
  homepage 'http://toolbelt.treasuredata.com/'

  caskroom_only true
  container_type :pkg

  before_install do
    system 'mv', "#{caskroom_path}/#{version}/mac", "#{caskroom_path}/#{version}/#{title}.pkg"
  end

  install "#{title}.pkg"

  uninstall :files => [
    '/usr/local/td',
  ]
end
