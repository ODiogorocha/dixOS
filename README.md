# README - Desenvolvimento de um Sistema Operacional em Assembly para Pendrive

## 📚 **Visão Geral**
Este projeto tem como objetivo o desenvolvimento de um sistema operacional simples em **Assembly**, que será carregado diretamente em um **pendrive**. O processo de criação permite o treino de programação, com foco na arquitetura de sistemas operacionais, e oferece uma compreensão profunda sobre a interação entre o hardware e o software a um nível baixo.

Usaremos ferramentas como **Rufus**, **NASM**, e **FerroRaw** para compilar e carregar o sistema operacional, com o intuito de adquirir conhecimento e experiência no desenvolvimento de sistemas operacionais e na programação em baixo nível.

## 🛠 **Ferramentas Utilizadas**

### 1. **NASM (Netwide Assembler)**
O **NASM** é um assembler para a linguagem de baixo nível, utilizado para escrever o código do sistema operacional. Ele permite que programadores criem sistemas rápidos e eficientes para arquiteturas como x86. Neste projeto, o NASM será responsável pela tradução de código Assembly para código de máquina que será executado pelo processador.

- **Website oficial**: [https://www.nasm.us/](https://www.nasm.us/)

### 2. **Rufus**
O **Rufus** é uma ferramenta gratuita e fácil de usar que permite criar discos USB inicializáveis. Ele será usado para gravar a imagem do sistema operacional no pendrive, tornando-o inicializável em qualquer máquina.

- **Website oficial**: [https://rufus.ie/](https://rufus.ie/)

### 3. **FerroRaw**
O **FerroRaw** é uma ferramenta que pode ser utilizada para emular ou testar a imagem do sistema operacional em um ambiente controlado antes de realizar a gravação no pendrive. Esta ferramenta ajuda a depurar e validar o sistema operacional em desenvolvimento.

- **Website oficial**: [https://www.fergoraw.com/](https://www.fergoraw.com/)

## 📂 **Estrutura do Projeto**
Este repositório contém os arquivos necessários para desenvolver um sistema operacional básico. A estrutura do diretório é a seguinte:

```
/src                # Código-fonte em Assembly
    /kernel.asm      # Kernel do sistema operacional
    /boot.asm        # Código de inicialização do sistema (Bootloader)
    /utils.asm       # Funções auxiliares e utilitários
/iso                 # Imagem ISO do sistema operacional
/README.md           # Este arquivo
```

## 🚀 **Passos para Desenvolver o Sistema Operacional**

### **1. Preparação do Ambiente de Desenvolvimento**

- **Instale o NASM**: Baixe e instale o NASM no seu sistema. O NASM será utilizado para compilar o código Assembly em código de máquina.
  - Para **Windows**, baixe a versão compatível no [site oficial do NASM](https://www.nasm.us/).
  - Para **Linux**, você pode instalar através do comando:
    ```bash
    sudo apt-get install nasm
    ```

- **Baixe o Rufus**: O Rufus será usado para criar um disco USB inicializável. Faça o download do Rufus no [site oficial](https://rufus.ie/).

- **Instale o FerroRaw**: Se necessário, baixe o FerroRaw para testar a imagem do sistema operacional antes de gravá-la no pendrive.

---

### **2. Desenvolvimento do Sistema Operacional**

1. **Escreva o código Assembly**:  
   No diretório **/src**, você desenvolverá o código do sistema operacional. O arquivo **kernel.asm** será o núcleo do sistema, enquanto o **boot.asm** será o código do carregador de inicialização (bootloader), responsável por carregar o kernel no processo de inicialização do sistema.

2. **Compile o código**:
   Após escrever o código em Assembly, utilize o **NASM** para compilar os arquivos `.asm` para o formato binário. Execute o seguinte comando para compilar:
   ```bash
   nasm -f bin -o kernel.bin kernel.asm
   ```

   Este comando gerará o arquivo binário **kernel.bin** que será carregado durante a inicialização do sistema operacional.

3. **Criação de uma Imagem ISO**:
   Após compilar o código, crie uma imagem ISO do sistema operacional com o seguinte comando (ou utilize ferramentas específicas para gerar a ISO):
   ```bash
   genisoimage -o sistema.iso -b boot.img -no-emul-boot -boot-load-size 4 -boot-info-table /iso
   ```

   Esta imagem ISO será usada para gravar o sistema operacional no pendrive.

---

### **3. Gravação no Pendrive com Rufus**

1. Abra o **Rufus** e insira o pendrive no computador.
2. No **Rufus**, selecione a **imagem ISO** do seu sistema operacional.
3. Escolha a opção de **Sistema de Arquivos FAT32** e **Crie um disco de inicialização com a imagem ISO**.
4. Clique em **Iniciar** para criar o pendrive inicializável com o sistema operacional.

Após a gravação, o pendrive estará pronto para ser utilizado em qualquer máquina capaz de inicializar a partir de dispositivos USB.

---

### **4. Testando o Sistema Operacional**

Após criar o pendrive inicializável, você pode:

- **Testar no computador**: Reinicie o computador e entre na BIOS/UEFI para selecionar o pendrive como dispositivo de inicialização. O sistema operacional começará a rodar.

- **Emular com FerroRaw**: Caso queira testar sem reiniciar a máquina, utilize o FerroRaw para emular o sistema operacional.

---

## 🧑‍💻 **Objetivo do Projeto**

Este projeto tem como objetivo proporcionar:

- **Aprendizado de baixo nível**: Programação em Assembly, uma linguagem de baixo nível que interage diretamente com o hardware.
- **Desenvolvimento de sistemas operacionais**: Aprofundar o entendimento sobre como os sistemas operacionais funcionam e são estruturados.
- **Treinamento de habilidades práticas**: A experiência prática de criar, testar e depurar um sistema operacional no ambiente real e virtual.

---

## 💡 **Conclusão**

Ao longo do desenvolvimento deste sistema operacional em Assembly, você obterá uma compreensão única dos componentes internos de um sistema operacional e de como as interações de baixo nível entre o software e o hardware acontecem. O uso de ferramentas como o **NASM**, **Rufus** e **FerroRaw** permitirá que você vivencie a criação e o teste de um sistema operacional real em um pendrive, o que pode ser útil para experimentação, aprendizado e desenvolvimento de habilidades avançadas em programação de sistemas.
