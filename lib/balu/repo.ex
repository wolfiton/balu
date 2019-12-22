defmodule Balu.Repo do
  use Ecto.Repo,
    otp_app: :balu,
    adapter: Ecto.Adapters.Postgres
end
