defmodule Balu.Repo.Migrations.AddCategoryIdToPosts do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :category_id, references(:categories, on_delete: :nothing)
    end

    create index(:posts, [:category_id])
  end
end
