### A Pluto.jl notebook ###
# v0.17.1

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
end

# ╔═╡ b25eb59b-cc0a-4114-a1c9-2d2e8e69682a
using Plots, PlutoUI, LinearAlgebra

# ╔═╡ 8a54d4d1-2205-4e27-96e2-ef7d61b4655a
macro term_str(str)
	with_terminal() do
		print(str)
	end
end;

# ╔═╡ c291a723-6073-4f72-a0dd-2ede90f43313
html"""<p style="font-size:400%;">Taller de introducción a...</p>"""

# ╔═╡ b3801d03-e1f1-45f0-b88f-f450c9346dc4
Resource("https://julialang.org/assets/infra/logo.svg", :width => 1000)

# ╔═╡ 5c7d2cdd-f334-4ad0-8bd6-99da3ae5d2fb
# Activar modo presentación al cargar cuaderno
html"<script>present()</script>"

# ╔═╡ f5384a99-7f34-4088-9cd2-c0f68a7c9d57
TableOfContents(aside=true, depth=1)

# ╔═╡ 38d65d9e-1e20-11ec-25ad-914b73e1a7aa
md"""
# Julia
"""

# ╔═╡ 21e855da-6750-401a-8eae-e343b2df35d9
md"""
### ¿Por qué Julia? Básicamente porque...
- Es rápido
- Es cómodo
- Es potente

> We want a language that's open source, with a liberal license. We want the **speed of C** with the dynamism of Ruby. We want a language that's homoiconic, with true macros like Lisp, but with obvious, **familiar mathematical notation like Matlab**. We want something as usable for **general programming as Python**, as easy for statistics as R, as natural for string processing as Perl, as powerful for linear algebra as Matlab, as good at gluing programs together as the shell. Something that is **dirt simple to learn**, yet keeps the most serious hackers happy. We want it interactive and we want it compiled. (Did we mention it should be as fast as C?) - *14 February 2012 | Jeff Bezanson Stefan Karpinski Viral B. Shah Alan Edelman*
"""

# ╔═╡ 4f79ece5-a135-4f93-9273-e17f0e3e9ca0
html"""
<iframe src="https://julialang.org/" style="border:0px #ffffff none;" name="mainpage" scrolling="yes" frameborder="0" marginheight="0px" marginwidth="0px" height="400px" width="100%" allowfullscreen></iframe>
"""

# ╔═╡ 82bd635f-4a61-403e-a4bf-748ae47415a7
md"""
# Pluto.jl
"""

# ╔═╡ eb05504a-abb5-46da-8519-e5d76d6d1786
md"""
Para instalar paquetes dentro de la interfaz de Julia escribimos `]` para que nos aparezca la interfaz de Pkg (el gestor de paquetes de Julia).
"""

# ╔═╡ aa1aab6e-9d92-4fed-a3fc-1df4d58e2f16
term"""
julia> ]
(@v1.6) pkg> add Pluto
"""

# ╔═╡ b22e4c7c-50ac-444a-b499-10c33d156706
md"""
Para ejecutar Pluto usamos:
"""

# ╔═╡ 6e369c48-4d33-4908-b724-929351f269c4
term"""
julia> import Pluto
julia> Pluto.run()
"""

# ╔═╡ 202e8696-6bf9-4b56-88d9-beb0e559abb0
md"""
En este taller, todo se realizará desde el navegador, pero todo lo que se explique es aplicable fuera de Pluto.
"""

# ╔═╡ 83a03ea0-f927-4322-9b03-435a5b37f31d
md"""
## ¿Por qué Pluto.jl?
"""

# ╔═╡ 55ee5fb4-1494-4783-8670-c937ac4a56a4
md"""
### Interactivo
"""

# ╔═╡ bf0deb8b-bdc7-4acb-acfa-aa910f3b4956
@bind n Slider(1:10)

# ╔═╡ e044f1ec-89c7-46d8-b9d6-513de17292f5
md"""
### Reactivo
"""

# ╔═╡ ff4bebb2-8414-4fec-91f4-74fc35070f95
md"""
## ¿La pega?
"""

# ╔═╡ d7b35ada-f73e-4c82-a89c-b21883010a16
md"""
No se pueden asignar variables varias veces.
"""

# ╔═╡ e982305a-53b0-4a93-90ce-e617892521a4
md"""
No se puede meter más de una expresión en una celda.
"""

# ╔═╡ 9c8b0399-4aa1-469a-80c8-3dac58497e83
b = 2
b + 1

# ╔═╡ 9695e6ee-16da-4ecd-8dfe-86153487a2fd
md"""
# Variables
"""

# ╔═╡ 6d37f7ba-b35d-45f3-8609-c95e244b1682
starting_variable = "Hello world!"

# ╔═╡ 1b41788c-9028-4957-9033-9e0ba3167209
typeof(starting_variable)

# ╔═╡ b4161298-52f7-48fc-a144-0ee3e1355c50
md"""
Podemos usar unicode en los nombres de variables:
"""

# ╔═╡ c14f9d7d-afe7-40fd-ad13-8c7904c0a5d0
χ = 1.5

# ╔═╡ 43a6d32e-2071-4a73-8e76-3e99e064cd0f
md"""
**Ejercicio:** Declara una variable llamada `Δx` de tipo float:
"""

# ╔═╡ 35f3c255-c75b-4e22-a3d3-b529fc889777


# ╔═╡ 747d501f-88e0-4afa-94eb-fa653b07ad7f
if @isdefined(Δx) && typeof(Δx) == Float64
	"""
	<p style="background-color: #dbf2d7; padding: 20px;"> ¡Hecho! Tu variable es Δx = $(repr(Δx)) </p>
	""" |> HTML
else
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Todavía no hay ninguna variable como la que te he pedido. :( </p>
	""" |> HTML
end

# ╔═╡ 82dbe43b-38c8-4a32-bf5d-c4f92c88ad2b
md"""
## Arrays y matrices
"""

# ╔═╡ 1846c4ce-2586-4f66-ab98-76d4556b10d8
md"""
Supongo que todos adoráis el álgebra lineal, así que pongamos un ejemplo con rotaciones.
"""

# ╔═╡ f672ec41-87a8-4683-85f7-ca64ec4c14e8
v = [1,1.2]

# ╔═╡ ef1b6076-aabe-49fb-930c-d6376456424d
@bind θ Slider(0:0.01:2π)

# ╔═╡ 9a4b8ad2-bdc7-4807-a93d-5b400171090a
A = [cos(θ) -sin(θ); sin(θ) cos(θ)]

# ╔═╡ 0bc668f4-f1e3-4c1f-a5b9-92ac36c5b7ec
Av = A*v

# ╔═╡ a6fdf423-32bd-4cab-8d80-efd72b842f44
let
	l = norm(v)
	plot([(0,0), Tuple(Av)], ratio=1, xlim=(-l, l), ylim=(-l, l), arrow=true, leg=false)
	plot!((t -> l.*(sin(t), cos(t))).(0:0.01:2π), line=:dash)
end

# ╔═╡ ddfbd42e-726e-4e79-a706-42c5d094d022
md"""
## Un ejercicio rápido
"""

# ╔═╡ 4b0cb049-aead-4f4d-8e41-7b09878ca687
md"""
Suficiente álgebra por ahora, ¿qué tal si vamos a por perretes?
"""

# ╔═╡ 8972f14f-ffa4-43bc-9d90-ad8e1782c5d4
Resource("https://http2.mlstatic.com/golden-retriever-cachorros-de-calidad-D_NQ_NP_122701-MLM20388012180_082015-F.jpg")

# ╔═╡ fa6f7212-f1ee-4798-b81c-330cd5e5f642
md"""
**Ejercicio:** Declara una lista de 3 elementos llamada `nombres` con nombres de perros:
"""

# ╔═╡ 0f8a4c74-c92c-48a2-b53b-8f07e7e6ed46


# ╔═╡ cec20129-37fb-4e9f-9b5c-f0c13683f4e6
if @isdefined(nombres)
	if typeof(nombres) == Vector{String} && length(nombres) == 3
		"""
		<p style="background-color: #dbf2d7; padding: 20px;"> ¡Hecho! Seguro que $(rand(nombres)) sería un perro super cariñoso. </p>
		""" |> HTML
	else
		"""
		<p style="background-color: #f2d7d7; padding: 20px;"> O no son nombres, o no son tres, sigue intentándolo. </p>
		""" |> HTML
	end
else
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Todavía no hay ninguna variable como la que te he pedido. Los perretes están tristes. </p>
	""" |> HTML
end

# ╔═╡ 688e8e2e-b243-4aff-a8c2-d7704962fbe4
md"""
## Structs
"""

# ╔═╡ 5392a77c-6176-47b7-aabe-d1f94a710a26
md"""
A ver, está claro que un perro no está dado solo por un nombre, tiene más cosas que lo definen. Así que vamos a crear `Perro`s.
"""

# ╔═╡ 60b42a94-9988-48ca-909f-46f3fab313b2
struct Perro
	nombre :: String
	edad :: Int64
	raza
end

# ╔═╡ f9a72f4a-1e72-4888-9a69-f658fe532b38
toby = Perro("Toby", 2, "Golden Retriever")

# ╔═╡ ef1c68ad-e694-42c0-a840-90a96f9e9423
md"""
**Ejercicio:** Toby se siente solo, ¿qué tal si creas un `Dueño` para que cuide de su `perro`?
"""

# ╔═╡ 1da27f26-53d9-4168-924f-9282aa577e05


# ╔═╡ 2d6ed22c-8152-4b87-b339-4c74b4aa110b
if @isdefined(Dueño)
	if !(:perro in fieldnames(Dueño))
		"""
		<p style="background-color: #f2d7d7; padding: 20px;"> Dueño existe, pero no parece que tenga perro. </p>
		""" |> HTML
	elseif findfirst(fieldnames(Dueño) .== :perro) == findfirst(fieldtypes(Dueño) .== Perro)
		"""
		<p style="background-color: #dbf2d7; padding: 20px;"> ¡Bien! Así se harán compañía el uno al otro. </p>
		""" |> HTML
	else
		"""
		<p style="background-color: #f2d7d7; padding: 20px;"> ¿Por qué el perro del dueño es un pato?. </p>
		""" |> HTML
	end
else
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Toby se siente solo... </p>
	""" |> HTML
end

# ╔═╡ 03300370-c71b-4b2d-824a-3719553d037d
md"""
# Estructuras de control
"""

# ╔═╡ ecbdb86c-2d03-455b-9d48-dea61f60c738
md"""
### If
"""

# ╔═╡ 663e5df4-6540-44aa-8166-48cc8519b241
if 2 > 3 && error("¡BOOM!")
	"No estalla porque 2 no es mayor que 3"
elseif 4 ∈ [1,2,3,4,5]
	"4 está en el Array"
else
	"Pues no ha pasado nada"
end

# ╔═╡ ff6a5415-0ec0-4d55-8be6-c6be6231ea55
md"""
En una línea:
"""

# ╔═╡ c728f118-ddc4-47b4-bf61-9ee42b04b9fc
even = iseven(35) ? "Es par" : "No es par"

# ╔═╡ e19bddb5-66b3-461b-b3cd-86565b012be2
md"""
**Ejercicio:** ¿Cuánto vale `resultado`?

```julia
resultado = if !(6 < 5) || error("¡KATAPUM!")
	42
else
	69
end
```
"""

# ╔═╡ fb7e8bb1-7810-4ed2-aa25-d8426e9ecd30
md"""
Creo que la respuesta es $(@bind sol_if Select(["Explota", "42", "69", ""], default=""))
"""

# ╔═╡ e2701a41-99c2-4c86-a561-d18b25802808
if sol_if == "42"
	"""
	<p style="background-color: #dbf2d7; padding: 20px;"> Por supuesto, la respuesta para todo, 42. </p>
	""" |> HTML
elseif sol_if == "69"
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Nice, pero no. </p>
	""" |> HTML
elseif sol_if == "Explota"
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Bomba desactivada por el OR. </p>
	""" |> HTML
else
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Porfi, responde. </p>
	""" |> HTML
end

# ╔═╡ f18e1787-06e9-4c4b-87ce-c7893a38d379
md"""
## While
"""

# ╔═╡ ac1220f3-61b1-4ca5-8eed-00d14f0a109c
md"""
Como el `if` pero en bucle.
"""

# ╔═╡ ad739252-04af-4fcd-bc57-8a9bb79bc3f0
let
	n = 1
	while n < 10
		n += 1
	end
	n^2
end

# ╔═╡ 7fde31dd-6cf2-453b-93f8-acb91607a111
md"""
Por supuesto, tenemos las expresiones `break` y `continue`.
"""

# ╔═╡ b85f28bd-5434-421a-8515-28f1cc6d8714
let
	n = 0
	s = 0
	while n < 100
		n += 1
		iseven(n) && continue
		s += n^2
	end
	s
end

# ╔═╡ 321787be-e811-47ec-8b13-b1588e2367b1
md"""
## For
"""

# ╔═╡ 5d26b738-d2b8-4900-9ccf-9264c4c4392b
let
	s = 0
	for i in 1:2:100
		s += i^2
	end
	s
end

# ╔═╡ 9bf78030-cd30-488f-b35a-4ffc5e537d79
md"""
También nos sirven para crear listas:
"""

# ╔═╡ 48b835b7-a4fd-4465-bc07-6198cd8b51f8
[sin(i) for i in 0:0.1:2π]

# ╔═╡ 2c6a456d-d194-4d68-b582-4e25e84fcc59
md"""
## Ejercicio
"""

# ╔═╡ 4a2f8465-44b2-425e-96d6-406dd9f39cbd
md"""
**Ejercicio:** Se acerca la Navidad, ayuda a Santa Claus a clasificar a los niños según hayan sido buenos (`Regalos`) o malos (`Carbón`) en su lista `esbueno`. Su criterio es algo arbitrario, son malos los niños cuyo nombre empiece por J.

Ejemplo: `["María", "Juanito"]` -> `["Regalos", "Carbón"]`
"""

# ╔═╡ 84f83d91-33e8-4b0a-bd5a-e93723799fb1
niños = rand(["María", "Juan", "Alejandro", "Pepe", "Jose", "Lucía", "Miriam", "Nina", "Jorge", "Mario", "Nicolás", "Paula"], 1000)

# ╔═╡ b97409f1-69bc-4a16-bdf5-98734b8f5593


# ╔═╡ 3015c2e3-26f5-48a7-a497-f56fde124f32
if @isdefined(esbueno) && esbueno == map(i -> i[1] == 'J' ? "Carbón" : "Regalos", niños)
	"""
	<p style="background-color: #dbf2d7; padding: 20px;"> Buen trabajo, tú te quedas en la lista de niños buenos. </p>
	""" |> HTML
else
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Todavía no está hecho, a ver si vas a acabar en la lista de niños malos. </p>
	""" |> HTML
end

# ╔═╡ aecd946c-98db-4b16-abf6-4559ee02139b
md"""
# Funciones
"""

# ╔═╡ 16d65d01-f3b4-4ba7-8a7e-1d46b1a92a2b
function sumar1(a, b)
	a + b
end

# ╔═╡ 962092e4-dd08-44dd-abb9-ab2fa3adab75
sumar2(a, b) = a + b

# ╔═╡ 1b1893c6-6375-4a14-b8e2-ebccd00273d5
sumar3 = (a, b) -> a + b

# ╔═╡ 05707949-1ddd-457d-85c0-f82f66164ce3
md"""
**Ejercicio:** Crea una función que detecte si un número es primo llamada `esprimo`.
"""

# ╔═╡ c86fd424-a551-49b2-95c3-fe57be553175


# ╔═╡ b0fba7f9-0331-41b2-88e7-d48dc42b6f19
if @isdefined(esprimo)
	if esprimo(1)
		"""
		<p style="background-color: #f2d7d7; padding: 20px;"> Upsi, el 1 no es primo. </p>
		""" |> HTML
	elseif all(esprimo, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271]) && !any(esprimo, [4, 6, 8, 9, 10, 12, 14, 15, 16, 18, 20, 21])
		"""
		<p style="background-color: #dbf2d7; padding: 20px;"> Bien hecho, parece que detecta bien los primos. </p>
		""" |> HTML
	else
		"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Alguno de los tests falla. </p>
	""" |> HTML
	end
else
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> Todavía no has hecho la función. </p>
	""" |> HTML
end

# ╔═╡ 1cbe625f-0c12-402e-87a4-550bb04ae4dc
md"""
## do
"""

# ╔═╡ 6de52598-a552-4778-837c-f813b4820c9a
md"""
Usamos `do` para pasar una función como primer argumento a otra. Por ejemplo
"""

# ╔═╡ 8ddcf06f-21ab-4113-b656-676447bf1150
map(i -> i^2, 1:10)

# ╔═╡ 22462e07-cd16-4f8c-bc1d-62c10338138e
map(1:10) do i
	i^2
end

# ╔═╡ cb06fdf8-2a78-4aae-b77f-f6b0e6b74c8d
md"""
**Ejercicio:** La función `sum` acepta como primer argumento una función que aplicar al array antes de sumarlo. Usa la función `esprimo` para calcular la suma de los primos menores de 10000 y guardarla en la variable `suma_primos`.
"""

# ╔═╡ cbbbb33a-48b4-4ac8-94d9-998604865f75


# ╔═╡ b26096b6-a64c-4b4b-bcda-643bae44f938
if @isdefined(suma_primos)
	if suma_primos == 5736396
		"""
		<p style="background-color: #dbf2d7; padding: 20px;"> ¡Bien calculado! </p>
		""" |> HTML
	else
		"""
		<p style="background-color: #f2d7d7; padding: 20px;"> Esa no es la respuesta. </p>
		""" |> HTML
	end
else
	"""
	<p style="background-color: #f2d7d7; padding: 20px;"> De momento nada. </p>
	""" |> HTML
end

# ╔═╡ 3525cd28-bf44-494c-b922-220255a7546d
md"""
## Aplicar funciones a un array
"""

# ╔═╡ 2928b940-0ec1-43f4-a38b-fa233cd943c5
md"""
Usando un punto, podemos aplicar funciones elemento a elemento.
"""

# ╔═╡ 055bd3e1-07d0-4382-ab56-39a12ee3359f
[1,2,3,4,5,6] .+ 5

# ╔═╡ e09671ac-aadb-4147-b2c1-d2b616272579
sin.([1,2,3,4,5,6])

# ╔═╡ fd99e1c1-7461-4596-86b1-1bb5c3ce68e8
md"""
## Duck typing y multiple dispatch
"""

# ╔═╡ cfb296b7-6ba9-4add-9209-99ef5eda0566
function ⋆(a, b)
	a * b - b * a
end

# ╔═╡ ec1b26de-abc0-4484-9d99-02c6904d7528
function ⋆(a)
	a ⋆ a
end

# ╔═╡ acd0b52b-21bc-4412-967a-0b6f0a24b671
function ⋆(a :: Number, b :: Number)
	0
end

# ╔═╡ f66be710-8b06-4d15-ba35-253df1b7f957
methods(⋆)

# ╔═╡ 9bbdf9a9-aa3b-4b64-a51d-e3fbec45a295
9 ⋆ 6

# ╔═╡ 00dff12f-17bf-4945-9452-6e02ddaf23d5
[9 4; 3 4] ⋆ [23 5; 23 65]

# ╔═╡ adaccc43-78d2-4f87-ab93-a7762d25bf24
@which 9 ⋆ 5

# ╔═╡ b1488dcf-93c0-4082-9e04-d494754d0d69
md"""
# Suficiente teoría, vamos a por una aplicación...
### veamos si puedo mejorar un poco al mus.
"""

# ╔═╡ 8d9f61c7-7139-4c36-8b9e-978543314405
md"""
## Struct para las cartas
"""

# ╔═╡ 6183a84a-34e7-4f94-86b2-083d6c2db2c4
md"""
Estructura de datos para las cartas.
"""

# ╔═╡ c9c7d916-7f3d-4875-bcc5-c013b7299045
begin
	struct Carta
		palo :: Char
		n :: Int64
		val :: Int64
		
		Carta(p, n) = let
			p ∉ ['b', 'o', 'c', 'e'] && error("Palo inválido")
			n ∉ vcat(1:7, 10:12) && error("Número inválido")
			val = if n >= 10
				10
			elseif n <= 2
				n = 1
				1
			elseif n == 3
				n = 12
				10
			else
				n
			end
			new(p, n, val)
		end
	end
	
	function Base.show(io::IO, c :: Carta)
		print(io, c.palo, c.n)
	end
end

# ╔═╡ 2790472a-916a-42bc-8586-458ddb186ff9
md"""
Alias para un `Vector` de `Carta`s
"""

# ╔═╡ bed73ce5-9c87-4c6d-80db-9c58671fc9a7
Mano = Vector{Carta}

# ╔═╡ 55675e1a-4b00-4be6-80a3-f44e1248b39d
md"""
## Crear la baraja de cartas
"""

# ╔═╡ 870894bc-1a14-4a6f-a10c-8db34ef46c14
baraja = [Carta(c, n) for c in ['b', 'o', 'c', 'e'], n in vcat(1:7, 10:12)]

# ╔═╡ 8a290175-4edd-4640-9715-985607748633
md"""
Podemos sacar manos de esta baraja con la función `rand`:
"""

# ╔═╡ 4cd767d8-2208-4339-9858-4c3e7eb22fda
rand(baraja, 4)

# ╔═╡ c9fef568-40b3-4078-a3b2-3a10264143b8
md"""
## Extender funciones de Julia
"""

# ╔═╡ f9acb404-930c-40ea-85ae-e0e515140016
function Base.sum(a :: Mano)
	sum(i->i.val, a)
end

# ╔═╡ ea8674c4-b1ac-4731-acc3-1849b06ed008
contourf(0:0.1:10, 0:0.1:10, (x,y) -> sum(i -> cos(i*y)*sin(i*x), 1:n))

# ╔═╡ 50a54011-37db-44b7-9782-61d832dc473e
function Base.count(n, a :: Mano)
	sum(i -> i.n == n, a)
end

# ╔═╡ 2fd1094f-5d89-43a7-9653-1ae834f654ba
sum([Carta('e', 12), Carta('b', 2), Carta('e', 6), Carta('o', 3)])

# ╔═╡ d744b049-ebe9-459c-a86f-4b424977115f
count(7, [Carta('o', 7), Carta('c', 6), Carta('b', 10), Carta('b', 7)])

# ╔═╡ 0152270c-31a2-4a1a-87b7-95975adfb885
md"""
## ¿Qué mano gana a grandes?
"""

# ╔═╡ c741b5f8-123a-43a1-9b65-d6f133563b3a
function grandes(a :: Mano, b :: Mano, a_mano = true)
	n = 12
	grandes_a = count(n, a)
	grandes_b = count(n, b)
	while grandes_a == grandes_b && n > 4
		n -= 1
		grandes_a = count(n, a)
		grandes_b = count(n, b)
	end
	if grandes_a == grandes_b
		a_mano
	else
		grandes_a > grandes_b
	end
end

# ╔═╡ 17d56da4-9375-4d9e-83e2-7bc4b89d3194
md"""
## ¿Qué mano gana a chicas?
"""

# ╔═╡ cab1e192-ff5c-4879-a848-e08af83e3050
function chicas(a :: Mano, b :: Mano, a_mano = true)
	n = 3
	chicas_a = count(1, a)
	chicas_b = count(1, b)
	while chicas_a == chicas_b && n < 11
		n += 1
		chicas_a = count(n, a)
		chicas_b = count(n, b)
	end
	if chicas_a == chicas_b
		a_mano
	else
		chicas_a > chicas_b
	end
end

# ╔═╡ 7e0568f8-e4cb-44d1-b5d8-ae405528db7f
md"""
## ¿Cómo localizamos los pares?
"""

# ╔═╡ c41419db-d41b-457a-aa43-c104f33e0622
function score_par(a :: Mano)
	rep = [count(c.n, a) for c in a]
	pares = a[rep .!= 1]
	length(pares), pares
end

# ╔═╡ 4ea2b3ca-3048-4e26-b5ef-f1cf4b7340a9
score_par(rand(baraja, 4))

# ╔═╡ 8e119d99-6c03-478d-a44c-ab17be14b8d6
function pares(a :: Mano, b :: Mano, amano = true)
	score_a = score_par(a)
	score_b = score_par(b)
	if score_a[1] == 0
		false
	elseif score_a[1] == score_b[1]
		grandes(score_a[2], score_b[2], amano)
	else
		score_a[1] > score_b[1]
	end
end

# ╔═╡ 481d10ad-bde1-45f3-9cd0-9c4d3c3d9ec5
md"""
## ¿Y qué pasa con el juego?
"""

# ╔═╡ 711e4d75-7788-4240-85c4-d02b7b34d1b7
function juego(a :: Mano, b :: Mano, amano = true)
	prioridades = [31, 32, 40, 37, 36, 35, 34, 33]
	score_a = findfirst(sum(a) .== prioridades)
	score_b = findfirst(sum(b) .== prioridades)
	if isnothing(score_a)
		false
	elseif isnothing(score_b)
		true
	elseif score_a == score_b
		if count(7, a) == 3
			true
		elseif count(7, b) == 3
			false
		else
			amano
		end
	else
		score_a < score_b
	end
end

# ╔═╡ 4f8ef523-9b93-4c98-b1f2-03119a961437
md"""
## Juntemos todo y tenemos...
"""

# ╔═╡ 3e5f2002-6d53-4332-ad93-b2d48bfaa929
@bind refresh Button("Dar nuevas")

# ╔═╡ ade8b527-c1c9-43f7-a0f4-7adb25814347
md"""
Soy mano $(@bind amano CheckBox(default=true))
"""

# ╔═╡ 9ba53c62-9dd4-4b54-b1a0-4ccd26c32768
begin
	refresh
	mano = rand(baraja, 4)
end

# ╔═╡ 0bf4efe6-a8c8-4b78-87f0-2ee91dbbe131
let
	n = 10000
	restantes = setdiff(baraja, mano)

	bar(
		["Grandes", "Chicas", "Pares", "Juego"],
		[
			count(i -> grandes(mano, rand(restantes, 4), amano), 1:n)/n,
			count(i -> chicas(mano, rand(restantes, 4), amano), 1:n)/n,
			count(i -> pares(mano, rand(restantes, 4), amano), 1:n)/n,
			count(i -> juego(mano, rand(restantes, 4), amano), 1:n)/n
		],
		ylim=(0,1), leg=false, title="Probabilidad de ganar " * (amano ? "con mano" : "sin mano")
	)
end

# ╔═╡ 4ab39fbf-e7ab-43c6-9277-0ad776161633
md"""
¿Una partida? Apuesto a $(@bind apuesta Select(["", "Grandes", "Chicas", "Pares", "Juego"]))
"""

# ╔═╡ f510c652-6e3a-4520-a546-3fc8353102a2
let
	rival = rand(setdiff(baraja, mano), 4)
	victoria = if apuesta == "Grandes"
		grandes(mano, rival, amano)
	elseif apuesta == "Chicas"
		chicas(mano, rival, amano)
	elseif apuesta == "Pares"
		score_par(mano)[1] == 0 && error("No tienes pares")
		pares(mano, rival, amano)
	elseif apuesta == "Juego"
		sum(mano) < 31 && error("No tienes juego")
		juego(mano, rival, amano)
	end
	if !isnothing(victoria)
		"La mano de tu rival ha sido <b>$(join(rival, ' '))</b> por lo que has " * (victoria ? "ganado." : "perdido.") |> HTML
	end
end	

# ╔═╡ 0c939270-fc42-4f7b-98b3-93651d693acc
md"""
# Material adicional
"""

# ╔═╡ cb2655b5-4089-4a00-916c-990159d0f065
md"""
En Julia ya hay un montón de cosas hechas, sobre todo para ciencias. Os recomiendo echar un vistazo a (sin ningún orden en particular):
"""

# ╔═╡ d409164f-df15-485e-9e57-aaab2df0570d
md"""
* Plots
* Unitful
* Measurements
* ModelingToolkit
* DifferentialEquations
* QuadGK
* GLM
* BenchmarkTools
* IJulia
* Distributions
* Statistics
* LinearAlgebra
* JuMP
* DataFrames
* CSV
* Symbolics
* ForwardDiff
"""

# ╔═╡ 046bb1ad-136b-4c39-955c-f26e85b5d7dc
md"""
# Contacto
"""

# ╔═╡ db80bfe7-1f87-4cd0-b34b-0d62d19ee9d1
md"""
Espero que os haya gustado, si os habéis quedado con alguna duda podéis contactarme en [jorge.rodriguez@alumnos.uva.es](mailto:jorge.rodriguez@alumnos.uva.es).
"""

# ╔═╡ 87809afd-529c-448f-9b19-66cf204e95ce
function chao(t)
	# c
	if 0 <= t <= 1
		0.3 .* (cos(4.5*t+1), sin(4.3*t+1))
	# h
	elseif 1 < t <= 1.25
		(0.4, -4+4*t)
	elseif 1.25 < t <= 1.58
		(0.4, 6-4*t)
	elseif 1.58 < t <= 2.5
		(0.6, 0.2) .+ 0.2 .* (-cos(3.4*(t - 1.58)), sin(3.4*(t - 1.58)))
	elseif 2.5 < t <= 3
		(0.8, 0.2) .+ (t-2.5) .* (0, -1)

	# a
	elseif 3 < t <= 4
		(1.2, 0) .+ 0.3 .* (cos(10*t - 2.3), sin(10.05*t - 2.3))
	elseif 4 < t <= 4.2
		(1.5, 0) .+ (t-4) .* (0, 1.5)
	elseif 4.2 < t <= 4.5
		(1.5, 0.3) .+ (t-4) .* (0, -1.2)

	# o
	elseif 4.2 < t <= 5.5
		(1.9, 0) .+ 0.3 .* (sin(10*t - 2.3), cos(10*t - 2.3))
	end
end;

# ╔═╡ 32f32ea5-36c8-46f1-a30b-ebd2a52abe20
@gif for i in 0:0.05:5.5
	plot(chao.(0:0.01:i), ratio=1, xlim=(-0.5, 2.5), ylim=(-0.4, 1.1), axis=false, ticks=false, leg=false)
end

# ╔═╡ 63424371-bc00-457a-aaeb-7b8f4f573839
a = "Hello world"

# ╔═╡ 1a29a065-bf3f-4616-8f2d-8e29b69aed78
a = 2

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
Plots = "~1.22.2"
PlutoUI = "~0.7.11"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "84918055d15b3114ede17ac6a7182f68870c16f7"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.3.1"

[[ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "19a35467a82e236ff51bc17a3a44b69ef35185a2"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.8+0"

[[Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "f2202b55d816427cd385a9a4f3ffb226bee80f99"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.1+0"

[[ColorSchemes]]
deps = ["ColorTypes", "Colors", "FixedPointNumbers", "Random"]
git-tree-sha1 = "9995eb3977fbf67b86d0a0a0508e83017ded03f2"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.14.0"

[[ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "31d0151f5716b655421d9d75b7fa74cc4e744df2"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.39.0"

[[CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[Contour]]
deps = ["StaticArrays"]
git-tree-sha1 = "9f02045d934dc030edad45944ea80dbd1f0ebea7"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.5.7"

[[DataAPI]]
git-tree-sha1 = "cc70b17275652eb47bc9e5f81635981f13cea5c8"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.9.0"

[[DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "7d9d316f04214f7efdbb6398d545446e246eff02"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.10"

[[DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3f3a2501fa7236e9b911e0f7a588c657e822bb6d"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.2.3+0"

[[Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b3bfd02e98aedfa5cf885665493c5598c350cd2f"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.2.10+0"

[[FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "Pkg", "Zlib_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "d8a578692e3077ac998b50c0217dfd67f21d1e5f"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.4.0+0"

[[FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "21efd19106a55620a188615da6d3d06cd7f6ee03"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.93+0"

[[Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "87eb71354d8ec1a96d4a7636bd57a7347dde3ef9"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.4+0"

[[FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "0c603255764a1fa0b61752d2bec14cfbd18f7fe8"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.5+1"

[[GR]]
deps = ["Base64", "DelimitedFiles", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Printf", "Random", "Serialization", "Sockets", "Test", "UUIDs"]
git-tree-sha1 = "c2178cfbc0a5a552e16d097fae508f2024de61a3"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.59.0"

[[GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Pkg", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "ef49a187604f865f4708c90e3f431890724e9012"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.59.0+0"

[[GeometryBasics]]
deps = ["EarCut_jll", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "58bcdf5ebc057b085e58d95c138725628dd7453c"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.1"

[[Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "7bf67e9a481712b3dbe9cb3dac852dc4b1162e02"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.68.3+0"

[[Graphite2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "344bf40dcab1073aca04aa0df4fb092f920e4011"
uuid = "3b182d85-2403-5c21-9c21-1e1f0cc25472"
version = "1.3.14+0"

[[Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[HTTP]]
deps = ["Base64", "Dates", "IniFile", "Logging", "MbedTLS", "NetworkOptions", "Sockets", "URIs"]
git-tree-sha1 = "60ed5f1643927479f845b0135bb369b031b541fa"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "0.9.14"

[[HarfBuzz_jll]]
deps = ["Artifacts", "Cairo_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "Graphite2_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg"]
git-tree-sha1 = "8a954fed8ac097d5be04921d595f741115c1b2ad"
uuid = "2e76f6c2-a576-52d4-95c1-20adfe4de566"
version = "2.8.1+0"

[[HypertextLiteral]]
git-tree-sha1 = "72053798e1be56026b81d4e2682dbe58922e5ec9"
uuid = "ac1192a8-f4b3-4bfe-ba22-af5b92cd3ab2"
version = "0.9.0"

[[IOCapture]]
deps = ["Logging", "Random"]
git-tree-sha1 = "f7be53659ab06ddc986428d3a9dcc95f6fa6705a"
uuid = "b5f81e59-6552-4d32-b1f0-c071b021bf89"
version = "0.2.2"

[[IniFile]]
deps = ["Test"]
git-tree-sha1 = "098e4d2c533924c921f9f9847274f2ad89e018b8"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.0"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[IterTools]]
git-tree-sha1 = "05110a2ab1fc5f932622ffea2a003221f4782c18"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.3.0"

[[IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "642a199af8b68253517b80bd3bfd17eb4e84df6e"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.3.0"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "8076680b162ada2a031f707ac7b4953e30667a37"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.2"

[[JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d735490ac75c5cb9f1b00d8b5509c11984dc6943"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.0+0"

[[LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[LaTeXStrings]]
git-tree-sha1 = "c7f1c695e06c01b95a67f0cd1d34994f3e7db104"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.2.1"

[[Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "a4b12a1bd2ebade87891ab7e36fdbce582301a92"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.6"

[[LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "0b4a5d71f3e5200a7dff793393e09dfc2d874290"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+1"

[[Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "7739f837d6447403596a75d19ed01fd08d6f56bf"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.3.0+3"

[[Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "42b62845d70a619f063a7da093d995ec8e15e778"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+1"

[[Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "340e257aada13f95f98ee352d316c3bed37c8ab9"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.3.0+0"

[[Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "5a5bc6bf062f0f95e62d0fe0a2d99699fed82dd9"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.8"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "Random", "Sockets"]
git-tree-sha1 = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.0.3"

[[MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[Measures]]
git-tree-sha1 = "e498ddeee6f9fdb4551ce855a46f54dbd900245f"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.1"

[[Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "bf210ce90b6c9eed32d25dbcae1ebc565df2687f"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.2"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[NaNMath]]
git-tree-sha1 = "bfe47e760d60b82b66b61d2d44128b62e3a369fb"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "0.3.5"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7937eda4681660b4d6aeeecc2f7e1c81c8ee4e2f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+0"

[[OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "15003dcb7d8db3c6c857fda14891a539a8f2705a"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.10+0"

[[Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[PCRE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b2a7af664e098055a7529ad1a900ded962bca488"
uuid = "2f80f16e-611a-54ab-bc61-aa92de5b98fc"
version = "8.44.0+0"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "9d8c00ef7a8d110787ff6f170579846f776133a9"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "2.0.4"

[[Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[PlotThemes]]
deps = ["PlotUtils", "Requires", "Statistics"]
git-tree-sha1 = "a3a964ce9dc7898193536002a6dd892b1b5a6f1d"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "2.0.1"

[[PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "2537ed3c0ed5e03896927187f5f2ee6a4ab342db"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.0.14"

[[Plots]]
deps = ["Base64", "Contour", "Dates", "Downloads", "FFMPEG", "FixedPointNumbers", "GR", "GeometryBasics", "JSON", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "PlotThemes", "PlotUtils", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "UUIDs"]
git-tree-sha1 = "457b13497a3ea4deb33d273a6a5ea15c25c0ebd9"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.22.2"

[[PlutoUI]]
deps = ["Base64", "Dates", "HypertextLiteral", "IOCapture", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "UUIDs"]
git-tree-sha1 = "0c3e067931708fa5641247affc1a1aceb53fff06"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.11"

[[Preferences]]
deps = ["TOML"]
git-tree-sha1 = "00cfd92944ca9c760982747e9a1d0d5d86ab1e5a"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.2"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "ad368663a5e20dbb8d6dc2fddeefe4dae0781ae8"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+0"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[RecipesBase]]
git-tree-sha1 = "44a75aa7a527910ee3d1751d1f0e4148698add9e"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.1.2"

[[RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase"]
git-tree-sha1 = "7ad0dfa8d03b7bcf8c597f59f5292801730c55b8"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.4.1"

[[Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "4036a3bd08ac7e968e27c203d45f5fff15020621"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.1.3"

[[SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[Scratch]]
deps = ["Dates"]
git-tree-sha1 = "0b4b7f1393cff97c33891da2a0bf69c6ed241fda"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.0"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[StaticArrays]]
deps = ["LinearAlgebra", "Random", "Statistics"]
git-tree-sha1 = "3240808c6d463ac46f1c1cd7638375cd22abbccb"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.2.12"

[[Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[StatsAPI]]
git-tree-sha1 = "1958272568dc176a1d881acb797beb909c785510"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.0.0"

[[StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "8cbbc098554648c84f79a463c9ff0fd277144b6c"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.10"

[[StructArrays]]
deps = ["Adapt", "DataAPI", "StaticArrays", "Tables"]
git-tree-sha1 = "2ce41e0d042c60ecd131e9fb7154a3bfadbf50d3"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.3"

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "TableTraits", "Test"]
git-tree-sha1 = "1162ce4a6c4b7e31e0e6b14486a6986951c73be9"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.5.2"

[[Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[URIs]]
git-tree-sha1 = "97bbe755a53fe859669cd907f2d96aee8d2c1355"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.3.0"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "3e61f0b86f90dacb0bc0e73a0c5a83f6a8636e23"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.19.0+0"

[[Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll"]
git-tree-sha1 = "2839f1c1296940218e35df0bbb220f2a79686670"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.18.0+4"

[[XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "1acf5bdf07aa0907e0a37d3718bb88d4b687b74a"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.9.12+0"

[[XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "cc4bf3fdde8b7e3e9fa0351bdeedba1cf3b7f6e6"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.0+0"

[[libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "HarfBuzz_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "5982a94fcba20f02f42ace44b9894ee2b140fe47"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.15.1+0"

[[libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "daacc84a041563f965be61859a36e17c4e4fcd55"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "2.0.2+0"

[[libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "c45f4e40e7aafe9d086379e5578947ec8b95a8fb"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+0"

[[nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"

[[x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fea590b89e6ec504593146bf8b988b2c00922b2"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2021.5.5+0"

[[x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "ee567a171cce03570d77ad3a43e90218e38937a9"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.5.0+0"

[[xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "ece2350174195bb31de1a63bea3a41ae1aa593b6"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "0.9.1+5"
"""

# ╔═╡ Cell order:
# ╟─b25eb59b-cc0a-4114-a1c9-2d2e8e69682a
# ╟─8a54d4d1-2205-4e27-96e2-ef7d61b4655a
# ╟─c291a723-6073-4f72-a0dd-2ede90f43313
# ╟─b3801d03-e1f1-45f0-b88f-f450c9346dc4
# ╟─5c7d2cdd-f334-4ad0-8bd6-99da3ae5d2fb
# ╟─f5384a99-7f34-4088-9cd2-c0f68a7c9d57
# ╟─38d65d9e-1e20-11ec-25ad-914b73e1a7aa
# ╟─21e855da-6750-401a-8eae-e343b2df35d9
# ╟─4f79ece5-a135-4f93-9273-e17f0e3e9ca0
# ╟─82bd635f-4a61-403e-a4bf-748ae47415a7
# ╟─eb05504a-abb5-46da-8519-e5d76d6d1786
# ╟─aa1aab6e-9d92-4fed-a3fc-1df4d58e2f16
# ╟─b22e4c7c-50ac-444a-b499-10c33d156706
# ╟─6e369c48-4d33-4908-b724-929351f269c4
# ╟─202e8696-6bf9-4b56-88d9-beb0e559abb0
# ╟─83a03ea0-f927-4322-9b03-435a5b37f31d
# ╟─55ee5fb4-1494-4783-8670-c937ac4a56a4
# ╠═bf0deb8b-bdc7-4acb-acfa-aa910f3b4956
# ╟─e044f1ec-89c7-46d8-b9d6-513de17292f5
# ╟─ea8674c4-b1ac-4731-acc3-1849b06ed008
# ╟─ff4bebb2-8414-4fec-91f4-74fc35070f95
# ╟─d7b35ada-f73e-4c82-a89c-b21883010a16
# ╠═1a29a065-bf3f-4616-8f2d-8e29b69aed78
# ╠═63424371-bc00-457a-aaeb-7b8f4f573839
# ╟─e982305a-53b0-4a93-90ce-e617892521a4
# ╠═9c8b0399-4aa1-469a-80c8-3dac58497e83
# ╟─9695e6ee-16da-4ecd-8dfe-86153487a2fd
# ╠═6d37f7ba-b35d-45f3-8609-c95e244b1682
# ╠═1b41788c-9028-4957-9033-9e0ba3167209
# ╟─b4161298-52f7-48fc-a144-0ee3e1355c50
# ╠═c14f9d7d-afe7-40fd-ad13-8c7904c0a5d0
# ╟─43a6d32e-2071-4a73-8e76-3e99e064cd0f
# ╠═35f3c255-c75b-4e22-a3d3-b529fc889777
# ╟─747d501f-88e0-4afa-94eb-fa653b07ad7f
# ╟─82dbe43b-38c8-4a32-bf5d-c4f92c88ad2b
# ╟─1846c4ce-2586-4f66-ab98-76d4556b10d8
# ╠═f672ec41-87a8-4683-85f7-ca64ec4c14e8
# ╠═ef1b6076-aabe-49fb-930c-d6376456424d
# ╠═9a4b8ad2-bdc7-4807-a93d-5b400171090a
# ╠═0bc668f4-f1e3-4c1f-a5b9-92ac36c5b7ec
# ╟─a6fdf423-32bd-4cab-8d80-efd72b842f44
# ╟─ddfbd42e-726e-4e79-a706-42c5d094d022
# ╟─4b0cb049-aead-4f4d-8e41-7b09878ca687
# ╟─8972f14f-ffa4-43bc-9d90-ad8e1782c5d4
# ╟─fa6f7212-f1ee-4798-b81c-330cd5e5f642
# ╠═0f8a4c74-c92c-48a2-b53b-8f07e7e6ed46
# ╟─cec20129-37fb-4e9f-9b5c-f0c13683f4e6
# ╟─688e8e2e-b243-4aff-a8c2-d7704962fbe4
# ╟─5392a77c-6176-47b7-aabe-d1f94a710a26
# ╠═60b42a94-9988-48ca-909f-46f3fab313b2
# ╠═f9a72f4a-1e72-4888-9a69-f658fe532b38
# ╟─ef1c68ad-e694-42c0-a840-90a96f9e9423
# ╠═1da27f26-53d9-4168-924f-9282aa577e05
# ╟─2d6ed22c-8152-4b87-b339-4c74b4aa110b
# ╟─03300370-c71b-4b2d-824a-3719553d037d
# ╟─ecbdb86c-2d03-455b-9d48-dea61f60c738
# ╠═663e5df4-6540-44aa-8166-48cc8519b241
# ╟─ff6a5415-0ec0-4d55-8be6-c6be6231ea55
# ╠═c728f118-ddc4-47b4-bf61-9ee42b04b9fc
# ╟─e19bddb5-66b3-461b-b3cd-86565b012be2
# ╟─fb7e8bb1-7810-4ed2-aa25-d8426e9ecd30
# ╟─e2701a41-99c2-4c86-a561-d18b25802808
# ╟─f18e1787-06e9-4c4b-87ce-c7893a38d379
# ╟─ac1220f3-61b1-4ca5-8eed-00d14f0a109c
# ╠═ad739252-04af-4fcd-bc57-8a9bb79bc3f0
# ╟─7fde31dd-6cf2-453b-93f8-acb91607a111
# ╠═b85f28bd-5434-421a-8515-28f1cc6d8714
# ╟─321787be-e811-47ec-8b13-b1588e2367b1
# ╠═5d26b738-d2b8-4900-9ccf-9264c4c4392b
# ╟─9bf78030-cd30-488f-b35a-4ffc5e537d79
# ╠═48b835b7-a4fd-4465-bc07-6198cd8b51f8
# ╟─2c6a456d-d194-4d68-b582-4e25e84fcc59
# ╟─4a2f8465-44b2-425e-96d6-406dd9f39cbd
# ╟─84f83d91-33e8-4b0a-bd5a-e93723799fb1
# ╠═b97409f1-69bc-4a16-bdf5-98734b8f5593
# ╟─3015c2e3-26f5-48a7-a497-f56fde124f32
# ╟─aecd946c-98db-4b16-abf6-4559ee02139b
# ╠═16d65d01-f3b4-4ba7-8a7e-1d46b1a92a2b
# ╠═962092e4-dd08-44dd-abb9-ab2fa3adab75
# ╠═1b1893c6-6375-4a14-b8e2-ebccd00273d5
# ╟─05707949-1ddd-457d-85c0-f82f66164ce3
# ╠═c86fd424-a551-49b2-95c3-fe57be553175
# ╟─b0fba7f9-0331-41b2-88e7-d48dc42b6f19
# ╟─1cbe625f-0c12-402e-87a4-550bb04ae4dc
# ╟─6de52598-a552-4778-837c-f813b4820c9a
# ╠═8ddcf06f-21ab-4113-b656-676447bf1150
# ╠═22462e07-cd16-4f8c-bc1d-62c10338138e
# ╟─cb06fdf8-2a78-4aae-b77f-f6b0e6b74c8d
# ╠═cbbbb33a-48b4-4ac8-94d9-998604865f75
# ╟─b26096b6-a64c-4b4b-bcda-643bae44f938
# ╟─3525cd28-bf44-494c-b922-220255a7546d
# ╟─2928b940-0ec1-43f4-a38b-fa233cd943c5
# ╠═055bd3e1-07d0-4382-ab56-39a12ee3359f
# ╠═e09671ac-aadb-4147-b2c1-d2b616272579
# ╟─fd99e1c1-7461-4596-86b1-1bb5c3ce68e8
# ╠═cfb296b7-6ba9-4add-9209-99ef5eda0566
# ╠═ec1b26de-abc0-4484-9d99-02c6904d7528
# ╠═acd0b52b-21bc-4412-967a-0b6f0a24b671
# ╠═f66be710-8b06-4d15-ba35-253df1b7f957
# ╠═9bbdf9a9-aa3b-4b64-a51d-e3fbec45a295
# ╠═00dff12f-17bf-4945-9452-6e02ddaf23d5
# ╠═adaccc43-78d2-4f87-ab93-a7762d25bf24
# ╟─b1488dcf-93c0-4082-9e04-d494754d0d69
# ╟─8d9f61c7-7139-4c36-8b9e-978543314405
# ╟─6183a84a-34e7-4f94-86b2-083d6c2db2c4
# ╠═c9c7d916-7f3d-4875-bcc5-c013b7299045
# ╟─2790472a-916a-42bc-8586-458ddb186ff9
# ╠═bed73ce5-9c87-4c6d-80db-9c58671fc9a7
# ╟─55675e1a-4b00-4be6-80a3-f44e1248b39d
# ╠═870894bc-1a14-4a6f-a10c-8db34ef46c14
# ╟─8a290175-4edd-4640-9715-985607748633
# ╠═4cd767d8-2208-4339-9858-4c3e7eb22fda
# ╟─c9fef568-40b3-4078-a3b2-3a10264143b8
# ╠═f9acb404-930c-40ea-85ae-e0e515140016
# ╠═50a54011-37db-44b7-9782-61d832dc473e
# ╠═2fd1094f-5d89-43a7-9653-1ae834f654ba
# ╠═d744b049-ebe9-459c-a86f-4b424977115f
# ╟─0152270c-31a2-4a1a-87b7-95975adfb885
# ╠═c741b5f8-123a-43a1-9b65-d6f133563b3a
# ╟─17d56da4-9375-4d9e-83e2-7bc4b89d3194
# ╠═cab1e192-ff5c-4879-a848-e08af83e3050
# ╟─7e0568f8-e4cb-44d1-b5d8-ae405528db7f
# ╠═c41419db-d41b-457a-aa43-c104f33e0622
# ╠═4ea2b3ca-3048-4e26-b5ef-f1cf4b7340a9
# ╠═8e119d99-6c03-478d-a44c-ab17be14b8d6
# ╟─481d10ad-bde1-45f3-9cd0-9c4d3c3d9ec5
# ╠═711e4d75-7788-4240-85c4-d02b7b34d1b7
# ╟─4f8ef523-9b93-4c98-b1f2-03119a961437
# ╟─3e5f2002-6d53-4332-ad93-b2d48bfaa929
# ╟─ade8b527-c1c9-43f7-a0f4-7adb25814347
# ╟─9ba53c62-9dd4-4b54-b1a0-4ccd26c32768
# ╟─0bf4efe6-a8c8-4b78-87f0-2ee91dbbe131
# ╟─4ab39fbf-e7ab-43c6-9277-0ad776161633
# ╟─f510c652-6e3a-4520-a546-3fc8353102a2
# ╟─0c939270-fc42-4f7b-98b3-93651d693acc
# ╟─cb2655b5-4089-4a00-916c-990159d0f065
# ╟─d409164f-df15-485e-9e57-aaab2df0570d
# ╟─046bb1ad-136b-4c39-955c-f26e85b5d7dc
# ╟─db80bfe7-1f87-4cd0-b34b-0d62d19ee9d1
# ╟─87809afd-529c-448f-9b19-66cf204e95ce
# ╟─32f32ea5-36c8-46f1-a30b-ebd2a52abe20
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
