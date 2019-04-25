require 'rails_restart/version'

module Rails
  def self.restart(parameters = '')
    pid = IO.read('tmp/pids/server.pid')
    system('kill ' + pid + ' && rails s ' + parameters)
  end
end
