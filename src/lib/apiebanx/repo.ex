defmodule Apiebanx.Repo do
  use Ecto.Repo,
    otp_app: :apiebanx,
    adapter: Ecto.Adapters.Postgres
end
