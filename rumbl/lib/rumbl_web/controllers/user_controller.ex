defmodule RumblWeb.UserController do
    use RumblWeb, :controller
    alias Rumbl.Accounts

    def index(conn, _params) do
        user = Accounts.list_users()
        remder(conn, "index.html", users: users)
    end
end