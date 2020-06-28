defmodule RumblWeb.UserController do
    use RumblWeb, :controller
    alias Rumbl.Accounts

    def index(conn, _params) do
        user = Accounts.list_users()
        render(conn, "index.html", user: user)
    end

    def show(conn, %{"id" => id}) do
        user = Accounts.get_user(id)
        render(conn, "show.html", user: user)
    end
end