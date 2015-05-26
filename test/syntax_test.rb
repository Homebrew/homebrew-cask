require 'test_helper'

describe "Syntax check" do
  project_root = Pathname.new(File.expand_path("#{File.dirname(__FILE__)}/../"))
  backend_files = Dir[project_root.join('**', '*.rb')].reject{|f| f.match %r{/Casks/}}
  %w{2.0 2.1}.each do |major_version|
    describe "under Ruby #{major_version}" do
      interpreter = Pathname.new("/System/Library/Frameworks/Ruby.framework/Versions/#{major_version}/usr/bin/ruby")
      interpreter = Pathname.new(Dir["#{ENV['HOME']}/.rbenv/versions/#{major_version}*/bin/ruby"].first.to_s)  unless interpreter.exist?
      interpreter = Pathname.new(Dir["#{ENV['HOME']}/.rvm/rubies/ruby-#{major_version}*/bin/ruby"].first.to_s) unless interpreter.exist?
      interpreter = Pathname.new(Dir["/usr/local/bin/ruby{-,}#{major_version}*"].first.to_s)                   unless interpreter.exist?
      interpreter = Pathname.new(Dir["/opt/local/bin/ruby{-,}#{major_version}*"].first.to_s)                   unless interpreter.exist?
      flags = %w{-c}
      flags.unshift '--disable-all'
      backend_files.each do |file|
        it "#{file} is valid Ruby" do
          skip("Ruby #{ major_version } not found") unless interpreter.exist?
          args = flags + [ '--', file ]
          shutup do
            raise SyntaxError.new("#{file} failed syntax check") unless system(interpreter, *args)
          end
        end
      end
    end
  end
end
