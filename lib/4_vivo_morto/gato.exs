defmodule Gato do
  def criar do
    receive do
      {:e_ai_beleza, quem_enviou} ->
        send(quem_enviou, :de_boas)
    end
  end
end

# Esse é você
rato = self()

# Cria um gato
gato = spawn(Gato, :criar, [])

IO.puts("Gato está vivo? #{Process.alive?(gato)}")

# Manda mensagem
send(gato, {:e_ai_beleza, rato})

receive do
  :de_boas -> IO.puts("Massa!")
end

IO.puts("Gato está vivo? #{Process.alive?(gato)}")
