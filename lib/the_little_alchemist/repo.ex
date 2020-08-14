defmodule TheLittleAlchemist.Repo do
  use Ecto.Repo,
    otp_app: :the_little_alchemist,
    adapter: Ecto.Adapters.Postgres
end
