class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDX70rfSMhmVbEcTGXhxdtJdcpEOoyIlq0QTkt2hIeVAqN4Ls2Ur2b2RNhYmOcyiOckjwcD9/aAi2PNAM7u7ZbWnL+XMUCwfH4VueLddpm1RJmuVFQAYoE/KFfAYCQFZhV3JmSL6MDt2VXxamPekB2CMIhNU6fHkQ7ljF6cIntPQC243oGBhCVhY53me+d5Je+QriZr5jz41pqFu+dwBBibkw+4WRbAE5HPf3Sev40TrC0A7mnRBBWCEiakBAtivtBPBnT/6msCHPEzLPS7SqGaEe5Ax6jFF0BWdVxrbHDn8BAUMxYX5uwV9Ck/cHihxA2WVPg0sUHIgOrKawDoEX+d',
  }
}
