listener "tcp" {
  address = "0.0.0.0:8200"
  tls_cert_file = "vault.crt"
  tls_key_file = "vault.key"
}

backend "inmem" {
  }

disable_mlock = true
