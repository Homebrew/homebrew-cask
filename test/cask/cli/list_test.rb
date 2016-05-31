require 'test_helper'

describe Hbc::CLI::List do
  it 'lists the installed Casks in a pretty fashion' do
    casks = %w[local-caffeine local-transmission].map { |c| Hbc.load(c) }

    casks.each { |c| TestHelper.install_without_artifacts(c) }

    lambda {
      Hbc::CLI::List.run
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      local-caffeine
      local-transmission
    OUTPUT
  end

  describe 'when Casks have been renamed' do
    before do
      @renamed_path = Hbc.caskroom.join('ive-been-renamed','latest','Renamed.app').tap(&:mkpath)
      @renamed_path.join('Info.plist').open('w') { |f| f.puts "Oh plist" }
    end

    after do
      @renamed_path.rmtree if @renamed_path.exist?
    end

    it 'lists installed Casks without backing ruby files (due to renames or otherwise)' do
      lambda {
        Hbc::CLI::List.run
      }.must_output <<-OUTPUT.gsub(/^ */, '')
        ive-been-renamed (!)
      OUTPUT
    end
  end


  it 'given a set of installed Casks, lists the installed files for those Casks' do
    casks = %w[local-caffeine local-transmission].map { |c| Hbc.load(c) }

    casks.each { |c| TestHelper.install_without_artifacts(c) }

    caffeine, transmission = casks

    shutup { Hbc::Artifact::App.new(transmission).install_phase }

    lambda {
      Hbc::CLI::List.run('local-transmission', 'local-caffeine')
    }.must_output <<-OUTPUT.gsub(/^ */, '')
      ==> Apps managed by brew-cask:
      '#{Hbc.appdir.join('Transmission.app')}'
      ==> Staged content:
      #{transmission.staged_path} (0 files)
      ==> Apps managed by brew-cask:
      Missing App: '#{Hbc.appdir.join('Caffeine.app')}'
      ==> Staged content:
      #{caffeine.staged_path} (13 files)
    OUTPUT
  end
end
