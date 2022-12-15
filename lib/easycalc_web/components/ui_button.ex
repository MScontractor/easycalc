defmodule UI.Button do
  use Surface.Component

  prop label, :string, required: :true

  def render(assigns) do
    ~F"""
      <div class="btn btn-primary">{@label}</div>
    """
  end
end
