import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :easycalc, EasycalcWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "ScPz6WXYn4srTk+Yshlnu9UA3Wc8BgUXd/rH8OOmYXl/4/ZQQHSF2t8MmRbpSHTR",
  server: false

# In test we don't send emails.
config :easycalc, Easycalc.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
