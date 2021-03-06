defmodule MyAppWeb.ErrorView do
  use MyAppWeb, :view

  def render("404.json", _assigns) do
    %{errors: %{detail: "Endpoint not found!"}}
  end

  def render("500.json", _assigns) do
    %{errors: %{detail: "Internal server error"}}
  end

  def render("401.json", %{message: message}) do
    %{errors: %{detail: message}}
  end

  # By default, Phoenix returns the status message from
  # the template name. For example, "404.json" becomes
  # "Not Found".
  def template_not_found(template, _assigns) do
    %{errors: %{detail: Phoenix.Controller.status_message_from_template(template)}}
  end
end
