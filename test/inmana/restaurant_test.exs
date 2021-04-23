defmodule Inmana.RestaurantTest do
  use Inmana.DataCase

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "When all params are valid, returns a valid changeset" do
      params = %{name: "Siri cascudo", email: "siri@cascudo.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{
               changes: %{
                 email: "siri@cascudo.com",
                 name: "Siri cascudo"
               },
               valid?: true
             } = response
    end

    test "When the name length is less that two chars, returns an error mensage" do
      params = %{name: "S", email: "siri@cascudo.com"}
      expected_response = %{name: ["should be at least 2 character(s)"]}

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response

      assert errors_on(response) == expected_response
    end

    test "When the email is blank, returns an error mensage" do
      params = %{name: "Siri Cascudo", email: ""}
      expected_response = %{email: ["can't be blank"]}

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response

      assert errors_on(response) == expected_response
    end
  end
end
