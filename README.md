<p align="left"><img src="assets/logo.png" width="140"></p>

[![Actions Status](https://github.com/beamkenya/ex_jenga/workflows/Elixir%20CI/badge.svg)](https://github.com/beamkenya/ex_jenga/actions) ![Hex.pm](https://img.shields.io/hexpm/v/ex_jenga) ![Hex.pm](https://img.shields.io/hexpm/dt/ex_jenga) [![Coverage Status](https://coveralls.io/repos/github/beamkenya/ex_jenga/badge.svg?branch=develop)](https://coveralls.io/github/beamkenya/ex_jenga?branch=develop)

# ExJenga :dollar: :pound: :yen: :euro:

> Payment Library for Equity Bank's Jenga API in Kenya. Let us get this :moneybag:

## Table of contents

- [Features](#features)
- [Installation](#installation)
- [Configuration](#configuration)
- [Documentation](#documentation)
- [Contribution](#contribution)
- [Contributors](#contributors)
- [Licence](#licence)

## Features

- [x] Send Money
- [x] Send Money Queries
- [ ] Receive Money
- [ ] Receive Money Queries
- [ ] Buy Goods, Pay Bills, Get Airtime
- [ ] Airtime
- [x] Reg Tech: KYC, AML, & CDD API
- [ ] Account Services
- [ ] Forex Rates

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_jenga` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_jenga, "~> 0.1.0"}
  ]
end
```

## Configuration

Create a copy of `config/dev.exs` or `config/prod.exs` from `config/dev.sample.exs`
Use the `sandbox` key to `true` when you are using sandbox credentials, chnage to `false` when going to `:prod`

### Jenga API (Equity)

Jenga API link: https://developer.jengaapi.io

Add below config to dev.exs / prod.exs files. <br>
This asumes you have a clear understanding of how [Jenga API works](https://developer.jengaapi.io/reference). <br>

Read more about how the token is generted here: https://developer.jengaapi.io/docs/developer-quickstart . <br>
The `private_key` is used to generate the `signature`. READ More: https://developer.jengaapi.io/docs/generating-signatures .

```elixir
config :ex_jenga,
    jenga: [
        api_key: "=======API KEY HERE ========",
        username: "=====USERNAME HERE=====",
        password: "=======PASSWORD HERE =======",
        private_key: "=======PRIVATE KEY HERE ======="
    ]
```

## Documentation

The docs can be found at [https://hexdocs.pm/ex_jenga](https://hexdocs.pm/ex_jenga).

## Contribution

If you'd like to contribute, start by searching through the [issues](https://github.com/beamkenya/ex_jenga/issues) and [pull requests](https://github.com/beamkenya/ex_jenga/pulls) to see whether someone else has raised a similar idea or question.
If you don't see your idea listed, [Open an issue](https://github.com/beamkenya/ex_jenga/issues).

Check the [Contribution guide](contributing.md) on how to contribute.

## Contributors

Auto-populated from:
[contributors-img](https://contributors-img.firebaseapp.com/image?repo=beamkenya/ex_jenga)

<a href="https://github.com/beamkenya/ex_jenga/graphs/contributors">
  <img src="https://contributors-img.firebaseapp.com/image?repo=beamkenya/ex_jenga" />
</a>

## Licence

ExJenga is released under [MIT License](https://github.com/appcues/exsentry/blob/master/LICENSE.txt)

[![license](https://img.shields.io/github/license/mashape/apistatus.svg?style=for-the-badge)](#)
