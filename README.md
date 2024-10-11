# cryptoinfo

# 📱 MVVM Crypto Info

Uma aplicação simples desenvolvida em Flutter que permite aos usuários visualizar informações sobre criptomoedas, como nome, símbolo, preço atual e logotipo. Os dados são fornecidos pela CoinGecko API, oferecendo informações atualizadas e relevantes sobre o mercado de criptomoedas.

## 🖼️ Screenshots

<img src="https://github.com/andreyquadros/mvvm_crypto_info/blob/master/Screenshot_20241009_171459.png" alt="MVVM Crypto Infos" width="300"/>


## 📋 Funcionalidades

- 📊 **Listagem de Criptomoedas**: O aplicativo lista as criptomoedas mais populares, mostrando nome, símbolo, preço e logotipo.
- 🔄 **Atualizar Preços**: Permite ao usuário atualizar manualmente os preços das criptomoedas.

## 🚀 Tecnologias Utilizadas

- **Flutter**: Framework principal usado para a construção da interface e navegação.
- **Dio**: Biblioteca utilizada para realizar requisições HTTP.
- **GetX**: Gerenciamento de estados, dependências e navegação.
- **CoinGecko API**: Fonte de dados para obter informações das criptomoedas.

## 📂 Estrutura do Projeto

```plaintext
crypto-info-app/
├── lib/
│   ├── main.dart               # Arquivo principal que inicia o aplicativo
│   ├── crypto_controller.dart  # Controlador que gerencia o estado e busca os dados da API
│   ├── crypto_model.dart             # Modelo que representa uma criptomoeda
│   └── crypto_list_page.dart        # Tela principal que exibe as informações das criptomoedas
└── pubspec.yaml                # Definições das dependências do projeto
```

## 🛠️ Instalação

Siga os passos abaixo para rodar o projeto localmente:

1. Clone o repositório:
   ```sh
   git clone https://github.com/seu-usuario/mvvm_crypto_info.git
   ```

2. Navegue até o diretório do projeto:
   ```sh
   cd mvvm_crypto_info
   ```

3. Instale as dependências:
   ```sh
   flutter pub get
   ```

4. Rode o aplicativo em um dispositivo emulador ou físico:
   ```sh
   flutter run
   ```

## 🎮 Uso

- Ao abrir o aplicativo, você verá uma lista de criptomoedas com seus respectivos preços e logotipos.
- Clique no ícone de atualizar na AppBar para buscar os preços mais recentes.

## 🌐 API Utilizada

O aplicativo utiliza a [CoinGecko API](https://www.coingecko.com/en/api) para obter informações atualizadas sobre as criptomoedas, como preço, nome e imagem.

## 🤝 Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests com melhorias, correções de bugs ou novas funcionalidades.

## 📄 Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE).

## 👤 Autor

- **Andrey Alencar Quadros** - [LinkedIn](https://www.linkedin.com/in/andreyquadros/) - [GitHub](https://github.com/andreyquadros)