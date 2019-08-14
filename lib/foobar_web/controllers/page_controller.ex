defmodule FoobarWeb.PageController do
  use FoobarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def fizzbuzz(conn, params) do
    if params["foo"] == "true" and params["bar"] == "true" do
      fooBarFunction(conn)
    end
    
    if params["foo"] == "true" do
      fooFunction(conn)
    end
      
    if params["bar"] == "true" do
      barFunction(conn)
    end

    json(conn, %{message: "foo and bar were not passed"})
  end

  def fooFunction(conn) do
    json(conn, %{message: "foo"})
  end

  def barFunction(conn) do
    json(conn, %{message: "bar"})
  end

  def fooBarFunction(conn) do
    json(conn, %{message: "foobar"})
  end
end
