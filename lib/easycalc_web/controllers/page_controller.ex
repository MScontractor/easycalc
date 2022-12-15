defmodule EasycalcWeb.PageController do
  use EasycalcWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
