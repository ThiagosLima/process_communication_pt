defmodule Gato do
  def criar do
    IO.puts("Você criou um gato")
  end
end

# Cria um gato
spawn(Gato, :criar, [])
