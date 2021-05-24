use Mix.Config
config :tesla, adapter: Tesla.Adapter.Hackney

config :ex_jenga,
  # When changed to "false" one will use the live endpoint url
  sandbox: true,
  jenga: [
    api_key: "=======API KEY HERE ========",
    username: "=====USERNAME HERE=====",
    password: "=======PASSWORD HERE =======",
    private_key: "=======PRIVATE KEY HERE ======="
  ]
