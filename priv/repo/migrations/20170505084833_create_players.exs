defmodule FPL.Repo.Migrations.CreatePlayers do
  use Ecto.Migration

  def change do
    create table(:players) do
      add :web_name, :string
      add :first_name, :string
      add :second_name, :string
      add :event_points, :integer
      add :total_points, :integer
      add :player_type_id, references(:player_types)
      add :club_id, references(:clubs)
    end
  end
end
