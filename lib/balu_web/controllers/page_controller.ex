defmodule BaluWeb.PageController do
  use BaluWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
