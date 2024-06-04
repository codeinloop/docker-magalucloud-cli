![alt text](./static/logo.png)
# Magalu Cloud CLI Dockerizada

## Descrição

O projeto Magalu Cloud CLI Dockerizada oferece uma maneira simplificada e portátil de utilizar a CLI da Magalu Cloud em ambientes Docker. A Magalu Cloud CLI é uma ferramenta poderosa para interagir com os recursos e serviços da Magalu Cloud, permitindo aos usuários gerenciar facilmente suas instâncias, armazenamento e outras configurações na nuvem.

Com este projeto, você pode aproveitar todas as funcionalidades da CLI da Magalu Cloud de forma encapsulada em um contêiner Docker, eliminando preocupações com dependências de sistema, versões de pacotes e configurações de ambiente. 

## Instalação

1. **Clone o Repositório**: Baixe o repositório do projeto a partir do GitHub.
2. **Construa o Contêiner**: Execute o comando de construção para criar a imagem Docker.
3. **Execute o Contêiner**: Inicie o contêiner Docker e comece a utilizar a CLI da Magalu Cloud.

### Tutorial de Uso Local

#### Passo 1: Baixar a Imagem Docker

Para baixar a imagem `codeinloop.com.br/docker-magalucloud-cli` do Docker Hub, abra um terminal e execute o seguinte comando:

```bash
docker run -it --rm codeinloop/docker-magalucloud-cli
```
#### Passo 2 (opcional): Construa o Contêiner: Execute o comando de construção para criar a imagem Docker

Isso irá construir a imagem Docker com base no Dockerfile fornecido no repositório.


```bash
docker build -t mgc .
docker run -it --rm magalucloud-cli
```
Isso iniciará o contêiner Docker e abrirá um shell interativo dentro do contêiner, onde você poderá usar a CLI da Magalu Cloud.

#### Passo 2: Usar a CLI da Magalu Cloud
Dentro do contêiner Docker, você pode usar a CLI da Magalu Cloud como faria normalmente em qualquer outro ambiente. Por exemplo, você pode executar comandos como:
```bash
mgc comando
```
## Contribuições

Contribuições são bem-vindas! Se você deseja melhorar este projeto, sinta-se à vontade para enviar pull requests. Por favor, abra uma issue para discutir quaisquer mudanças importantes antes de implementá-las.

## Licença

Este projeto está licenciado sob a [MIT License](LICENSE).