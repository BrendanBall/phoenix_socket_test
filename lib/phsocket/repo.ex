defmodule Phsocket.Repo do
  use Ecto.Repo,
    otp_app: :phsocket,
    adapter: Ecto.Adapters.Postgres
end
