require 'rails_restart/version'

module Rails
  def self.restart(parameters = '')
    pid = IO.read('tmp/pids/server.pid')
    cmd = '"sleep 1 && kill ' + pid + ' && sleep 5 && rails s ' + parameters + '" '
    system('echo ' + cmd + ' > restart.sh')
    system('bash restart.sh &')
  end
end
