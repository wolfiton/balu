defmodule Balu.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  alias Balu.Blog.Category

  def change do
    create table(:posts) do
      add :title, :string
      add :content, :string
      add :published, :boolean, default: false, null: false

      timestamps()
    end

    create unique_index(:posts, [:title])
  end
end
