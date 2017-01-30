defmodule MyAppWeb.Repo do
  use Ecto.Repo, otp_app: :myAppWeb, adapter: Mongo.Ecto
end

defmodule Weather do
  use Ecto.Model

  @primary_key { :id, :binary_id, autogenerate :true }
  schema "weather"
  do
    field: city# Defaults to type: string
    field: temp_lo, :integer
    field: temp_hi, :integer
    field: prcp, :float,
    default: 0.0
  end
end

defmodule Simple do
  import Ecto.Query

  def sample_query do
    query = from w in Weather,
    where: w.prcp > 0 or is_nil(w.prcp),
    select: w
    Repo.all(query)
  end
end
