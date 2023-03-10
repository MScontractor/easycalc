defmodule UI.Calculator do
  use Surface.Component

  slot default, required: true

  def render(assigns) do
    ~F"""
      <div class="card w-64 bg-base-100 shadow-xl rounded-lg p-2">
        <#slot />
      </div>
    """
  end
end
