defmodule Balu.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  alias Balu.Blog.Category

  schema "posts" do
    field :content, :string
    field :published, :string
    field :title, :string
    belongs_to(:category, Category)
    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :published])
    |> validate_required([:title, :content, :published])
    |> foreign_key_constraint(:category_id)
    |> unique_constraint(:title)
  end
end
