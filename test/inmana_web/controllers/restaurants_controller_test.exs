defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase, async: true

  describe "create/2" do
    test "When all params are valid, creates the user", %{conn: conn} do
      params = %{name: "Siri cascudo", email: "siri@cascudo.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "Restaurant created!",
               "restaurant" => %{
                 "email" => "siri@cascudo.com",
                 # For check if id exists but without check your value
                 "id" => _id,
                 "name" => "Siri cascudo"
               }
             } = response
    end

    test "When the name length is less that two chars, returns an error mensage", %{conn: conn} do
      params = %{name: "S", email: "siri@cascudo.com"}
      expected_response = %{"message" => %{"name" => ["should be at least 2 character(s)"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end

    test "When the name is blank, returns an error mensage", %{conn: conn} do
      params = %{email: "siri@cascudo.com"}
      expected_response = %{"message" => %{"name" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end

    test "When the email is blank, returns an error mensage", %{conn: conn} do
      params = %{name: "Siri Cascudo"}
      expected_response = %{"message" => %{"email" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end
  end
end
