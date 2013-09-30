# homedir.rb

require 'etc'

Facter.add("homedir") do
  setcode do
    user = `whoami`
    Etc.getpwnam(user).dir    
  end
end
