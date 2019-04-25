require 'rails_restart/version'

module Rails
  def self.restart(parameters = '')
    pid = IO.read('tmp/pids/server.pid')
    exec('bash restart.sh ' + pid + ' ' + parameters)
  end
end
