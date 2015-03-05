class Hbc::CLI::InternalUseBase < Hbc::CLI::Base
  def self.command_name
    super.sub(%r{^internal_}i, '_')
  end

  def self.visible
    false
  end
end
