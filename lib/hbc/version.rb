HBC_VERSION = '0.60.0'

module Hbc
  def self.full_version
    @full_version ||= begin
      revision, commit = Dir.chdir(Hbc.default_tappath) do
        [`git rev-parse --short=4 --verify -q HEAD 2>/dev/null`.chomp,
         `git show -s --format="%cr" HEAD 2>/dev/null`.chomp]
      end
      "#{HBC_VERSION} (git revision #{revision}; last commit #{commit})"
    end
  end
end
