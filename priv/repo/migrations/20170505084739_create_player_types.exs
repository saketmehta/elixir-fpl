defmodule FPL.Repo.Migrations.CreatePlayerTypes do
  use Ecto.Migration

  def change do
    create table(:player_types) do
      add :singular_name, :string
      add :singular_name_short, :string
      add :plural_name, :string
      add :plural_name_short, :string
    end
  end
end
