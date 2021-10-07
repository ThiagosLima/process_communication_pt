defmodule Gato do
  def criar do
    receive do
      :e_ai_beleza -> IO.puts("De boas")
    end
  end
end

# Cria um gato
gato = spawn(Gato, :criar, [])

# Manda mensagem
send(gato, :e_ai_beleza)
