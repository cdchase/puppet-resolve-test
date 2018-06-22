class { 'apache':
  default_vhost    => false,
  mpm_module       => 'prefork',
  server_signature => 'Off',
  server_tokens    => 'ProductOnly'
}
