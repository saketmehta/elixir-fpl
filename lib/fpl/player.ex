defmodule FPL.Club do
  use Ecto.Schema

  schema "club" do
    field :name
    field :short_name
  end

  def changeset(club, params \\ %{}) do
    club
    |> Ecto.Changeset.cast(params, [:name, :short_name])
    |> Ecto.Changeset.validate_required([:name, :short_name])
  end
end