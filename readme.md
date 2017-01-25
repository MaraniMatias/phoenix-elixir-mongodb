# Introducción

# Requisitos
Tener instalado Elixir and Erlang, [Guia de instalacion](http://elixir-lang.org/install.html) o [aqui](https://github.com/MaraniMatias/elixir-hola-mundo).
Opcional tener instalado [NodeJS](https://nodejs.org/).

Luego en la terminal
```sh
$ mix local.hex
$ mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez
```

# Comencemos
Phoenix usa [Brunch.io](http://brunch.io/) para administrar archivos.
Con el siguiente comando creamos la base de nuestra aplicacion web.
Uso `--database mysql` or `--database mongodb` porque predeterminado Phoenix usa PogresSQL.
Deforma predeterminada Phoenix usa [Ecto](http://www.phoenixframework.org/docs/ecto-models) para accesos ala base de datos, se puede desactivar con `--no-ecto`.

* NodeJS instalado.
```sh
$ mix phoenix.new myAppWeb --database mongodb
```
* Sin tener NodeJS
```sh
$ mix phoenix.new myAppWeb --no-brunch --database mongodb
```


# Bibliografía
* [Phoenix Framework](http://www.phoenixframework.org)
