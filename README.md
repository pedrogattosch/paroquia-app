PT:
# ⛪ Aplicativo Paróquia Menino Deus

Este é um aplicativo desenvolvido para que a comunidade da **Paróquia Menino Deus** consiga acompanhar as notícias, eventos, horários das missas, e tenha acesso à liturgia diária e outros serviços. O aplicativo foi projetado para rodar em diversas plataformas, incluindo dispositivos móveis.

## 💻 Tecnologias

A tecnologia principal utilizada é o **Flutter**, um kit de ferramentas de criação de interface de usuário do Google, utilizando a linguagem de programação **Dart**.

O projeto utiliza as seguintes bibliotecas para as suas funcionalidades:

* `google_fonts`: Para a tipografia customizada em toda a interface.
* `url_launcher`: Para abrir URLs externas, como o link para o Google Maps.
* `http` e `connectivity_plus`: Utilizados na tela de Liturgia para buscar dados da API e verificar a conexão com a internet.
* `intl`: Para formatação de datas e suporte à pt_BR.

## ⚙️ Pré-requisitos

Para executar o projeto localmente, certifique-se de que você tem:

1.  **Flutter SDK**: Instale a versão mais recente do Flutter SDK seguindo a documentação oficial.
2.  **Configuração das plataformas**: Configure os *toolchains* necessários para as plataformas de destino (Android, iOS, Web, etc.).
3.  **IDE**: Um ambiente de desenvolvimento configurado, sendo os mais recomendados **Visual Studio Code** e **Android Studio**.

## 🚀 Instruções de execução

1.  Vá até a raiz do projeto no seu terminal.

2.  Obtenha as dependências do projeto:
    ```bash
    flutter pub get
    ```
    Este comando fará o download de todas as dependências listadas no arquivo `pubspec.yaml`.

3.  Verifique a configuração do seu ambiente:
    ```bash
    flutter doctor
    ```
    Siga as instruções para corrigir quaisquer problemas de configuração.

4.  Verifique os dispositivos disponíveis:
    ```bash
    flutter devices
    ```
    Certifique-se de que um emulador, simulador ou dispositivo físico esteja em execução e detectado.

5.  Execute o aplicativo:
    ```bash
    flutter run
    ```
    O comando irá rodar na plataforma conectada por padrão. Para rodar especificamente em outra plataforma, use a flag `-d <plataforma>`, como `flutter run -d chrome` para Web.

## ✨ Funcionalidades e telas

O aplicativo é navegado através de um `BottomNavigationBar` que contém as telas:

### **1. HomeScreen** (`lib/features/home/screens/home_screen.dart`)
A `HomeScreen` serve como um *dashboard*, projetado para fornecer aos usuários uma visão imediata dos conteúdos mais relevantes.

### **2. LiturgiaScreen** (`lib/features/liturgia/screens/liturgia_screen.dart`)
Busca a liturgia diária a partir de uma API externa. Inclui um recurso de recarga e *feedback* visual para a cor litúrgica do dia.

### **3. AgendaScreen** (`lib/features/agenda/screens/agenda_screen.dart`)
Exibe a programação de missas e eventos semanais, utilizando um `TabBar` para navegação entre os dias da semana.

### **4. MaisOpcoesScreen** (`lib/features/mais_opcoes/screens/mais_opcoes_screen.dart`)
É uma tela de extensão que consolida todas as funcionalidades secundárias. Utiliza um `GridView.builder` para exibir os itens de menu em duas colunas.

* **InformacoesScreen**: Exibe o endereço e contatos da paróquia, horários de missas e um botão para abrir a localização no Google Maps [lib/features/informacoes/screens/informacoes_screen.dart].
* **DoacoesScreen**: Permite que os usuários contribuam via Pix, exibindo a chave Pix como texto selecionável e um botão para copiar a chave para a área de transferência [lib/features/doacoes/screens/doacoes_screen.dart].
* **OracoesScreen**: Lista orações católicas tradicionais e permite a navegação para a `OracaoDetalheScreen` para visualizar o texto completo [lib/features/oracoes/screens/oracoes_screen.dart].
* **PastoraisScreen**: Exibe uma lista das pastorais, com seus nomes, descrições e horários de encontro [lib/features/pastorais/screens/pastorais_screen.dart].

EN:
# ⛪ Menino Deus Parish App

This is an application developed so that the **Menino Deus Parish** community can follow news, events, mass schedules, and access the daily liturgy and other services. The app was designed to run on multiple platforms, including mobile devices.

## 💻 Technologies

The main technology used is **Flutter**, Google's UI toolkit for building user interfaces, using the **Dart** programming language.

The project uses the following libraries for its features:

* `google_fonts`: For custom typography across the interface.
* `url_launcher`: To open external URLs, such as the link to Google Maps.
* `http` and `connectivity_plus`: Used on the Liturgy screen to fetch API data and check internet connection.
* `intl`: For date formatting and pt_BR support.

## ⚙️ Prerequisites

To run the project locally, make sure you have:

1. **Flutter SDK**: Install the latest version of the Flutter SDK following the official documentation.
2. **Platform setup**: Configure the necessary toolchains for the target platforms (Android, iOS, Web, etc.).
3. **IDE**: A properly configured development environment, with **Visual Studio Code** and **Android Studio** being the recommended ones.

## 🚀 Running instructions

1. Navigate to the project root in your terminal.

2. Fetch project dependencies:
    ```bash
    flutter pub get
    ```
    This command downloads all dependencies listed in the `pubspec.yaml` file.

3. Check your environment configuration:
    ```bash
    flutter doctor
    ```
    Follow any instructions provided to fix configuration issues.

4. List available devices:
    ```bash
    flutter devices
    ```
    Make sure an emulator, simulator, or physical device is running and detected.

5. Run the application:
    ```bash
    flutter run
    ```
    This command will run on the default connected platform. To run on a specific platform, use the `-d <platform>` flag, for example:
    ```bash
    flutter run -d chrome
    ```

## ✨ Features and screens

The application is navigated through a `BottomNavigationBar` containing the following screens:

### **1. HomeScreen** (`lib/features/home/screens/home_screen.dart`)
The `HomeScreen` serves as a dashboard, designed to provide users with an immediate overview of the most relevant content.

### **2. LiturgiaScreen** (`lib/features/liturgia/screens/liturgia_screen.dart`)
Fetches the daily liturgy from an external API. Includes a refresh feature and visual feedback for the liturgical color of the day.

### **3. AgendaScreen** (`lib/features/agenda/screens/agenda_screen.dart`)
Displays the schedule of weekly masses and events, using a `TabBar` to navigate between the days of the week.

### **4. MaisOpcoesScreen** (`lib/features/mais_opcoes/screens/mais_opcoes_screen.dart`)
An extended screen that consolidates all secondary functionalities. Uses a `GridView.builder` to display menu items in two columns.

* **InformacoesScreen**: Displays the parish's address and contacts, mass schedules, and a button to open the location on Google Maps.  
  _[lib/features/informacoes/screens/informacoes_screen.dart]_

* **DoacoesScreen**: Allows users to contribute via Pix, showing the Pix key as selectable text and providing a button to copy it to the clipboard.  
  _[lib/features/doacoes/screens/doacoes_screen.dart]_

* **OracoesScreen**: Lists traditional Catholic prayers and allows navigation to the `OracaoDetalheScreen` to view the full text.  
  _[lib/features/oracoes/screens/oracoes_screen.dart]_

* **PastoraisScreen**: Displays a list of parish ministries, including their names, descriptions, and meeting times.  
  _[lib/features/pastorais/screens/pastorais_screen.dart]_
