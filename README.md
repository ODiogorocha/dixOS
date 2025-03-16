# [README] Desenvolvimento de um Sistema Operacional em Assembly para Pendrive

## Visão Geral
Este projeto tem como objetivo desenvolver um sistema operacional simples em **Assembly**, que será carregado diretamente em um **pendrive**. O processo de criação permite treinamento em programação, com foco na arquitetura de sistemas operacionais, e proporciona um entendimento aprofundado da interação entre hardware e software em baixo nível.

Utilizaremos ferramentas como **Rufus**, **NASM** e **FerroRaw** para compilar e carregar o sistema operacional, com o objetivo de adquirir conhecimento e experiência no desenvolvimento de sistemas operacionais e programação de baixo nível.

## Ferramentas Utilizadas

### 1. NASM (Netwide Assembler)
O **NASM** é um montador de linguagem de baixo nível, usado para escrever o código do sistema operacional. Ele permite que programadores criem sistemas rápidos e eficientes para arquiteturas como x86. Neste projeto, o NASM será responsável por traduzir o código Assembly para código de máquina que será executado pelo processador.

- **Site oficial**: [https://www.nasm.us/](https://www.nasm.us/)

### 2. Rufus
O **Rufus** é uma ferramenta gratuita e fácil de usar que permite a criação de pendrives inicializáveis. Ele será usado para gravar a imagem do sistema operacional no pendrive, tornando-o inicializável em qualquer máquina.

- **Site oficial**: [https://rufus.ie/](https://rufus.ie/)

### 3. FerroRaw
O **FerroRaw** é uma ferramenta que pode ser usada para emular ou testar a imagem do sistema operacional em um ambiente controlado antes de gravá-la no pendrive. Essa ferramenta auxilia na depuração e validação do sistema operacional em desenvolvimento.

- **Site oficial**: [https://www.fergoraw.com/](https://www.fergoraw.com/)

## Estrutura do Projeto
Este repositório contém os arquivos necessários para desenvolver um sistema operacional básico. A estrutura do diretório é a seguinte:

```
/src                 # Código-fonte em Assembly
    /kernel.asm      # Núcleo do sistema operacional
    /boot.asm        # Código do bootloader do sistema
    /utils.asm       # Funções auxiliares e utilitárias
/DiskImage           # Imagem ISO do sistema operacional
/README.md           # Este arquivo
```

## Etapas para Desenvolver o Sistema Operacional

### 1. Configurando o Ambiente de Desenvolvimento

- **Instalar o NASM**: Baixe e instale o NASM no seu sistema. O NASM será utilizado para compilar o código Assembly em código de máquina.
  - Para **Windows**, baixe a versão compatível no [site oficial do NASM](https://www.nasm.us/).
  - Para **Linux**, você pode instalar usando o comando:
    ```bash
    sudo apt-get install nasm
    ```

- **Baixar o Rufus**: O Rufus será utilizado para criar um pendrive inicializável. Baixe o Rufus no [site oficial](https://rufus.ie/).

- **Instalar o FerroRaw**: Se necessário, baixe o FerroRaw para testar a imagem do sistema operacional antes de gravá-la no pendrive.

---

### 2. Desenvolvimento do Sistema Operacional

1. **Escrever o código Assembly**:  
   No diretório **/src**, você desenvolverá o código do sistema operacional. O arquivo **kernel.asm** será o núcleo do sistema, enquanto **boot.asm** será o código do bootloader, responsável por carregar o kernel durante o processo de inicialização do sistema.

2. **Compilar o código**:  
   Após escrever o código Assembly, use o **NASM** para compilá-lo em formato binário. Execute o seguinte comando para compilar:
   ```bash
   nasm -f bin -o kernel.bin kernel.asm
   ```

   Esse comando gerará o arquivo binário **kernel.bin**, que será carregado durante a inicialização do sistema operacional.

3. **Criar uma Imagem ISO**:  
   Após compilar o código, crie uma imagem ISO do sistema operacional utilizando o seguinte comando (ou use ferramentas específicas para gerar a ISO):
   ```bash
   genisoimage -o system.iso -b boot.img -no-emul-boot -boot-load-size 4 -boot-info-table /iso
   ```

   Essa imagem ISO será utilizada para gravar o sistema operacional no pendrive.

---

### 3. Gravando no Pendrive com Rufus

1. Abra o **Rufus** e insira o pendrive no seu computador.
2. No **Rufus**, selecione a **imagem ISO** do seu sistema operacional.
3. Escolha a opção **Sistema de Arquivos FAT32** e **Criar disco inicializável usando a imagem ISO**.
4. Clique em **Iniciar** para criar o pendrive inicializável com o sistema operacional.

Após a gravação, o pendrive estará pronto para ser usado em qualquer máquina capaz de inicializar a partir de dispositivos USB.

---

### 4. Testando o Sistema Operacional

Após criar o pendrive inicializável, você pode:

- **Testar em um computador**: Reinicie o computador e entre na BIOS/UEFI para selecionar o pendrive como dispositivo de inicialização. O sistema operacional será carregado.

- **Emular com FerroRaw**: Se quiser testar sem reiniciar sua máquina, use o FerroRaw para emular o sistema operacional.

---

## Objetivos do Projeto

Este projeto visa proporcionar:

- **Aprendizado em baixo nível**: Programação em Assembly, uma linguagem de baixo nível que interage diretamente com o hardware.
- **Desenvolvimento de sistema operacional**: Um entendimento mais profundo de como os sistemas operacionais funcionam e são estruturados.
- **Treinamento prático de habilidades**: A experiência prática de criar, testar e depurar um sistema operacional em ambientes reais e virtuais.

---

## Conclusão

Durante o desenvolvimento deste sistema operacional em Assembly, você obterá um entendimento único sobre os componentes internos de um sistema operacional e como ocorrem as interações de baixo nível entre software e hardware. Utilizando ferramentas como **NASM**, **Rufus** e **FerroRaw**, você poderá experimentar a criação e o teste de um sistema operacional real em um pendrive, útil para experimentação, aprendizado e desenvolvimento de habilidades avançadas em programação de sistemas.

---

<conteúdo original em inglês abaixo>

# [README] Development of an Operating System in Assembly for USB Drive


## Overview
This project aims to develop a simple operating system in **Assembly**, which will be loaded directly onto a **USB drive**. The creation process allows programming training, focusing on operating system architecture, and offers a deep understanding of the interaction between hardware and software at a low level.

We will use tools like **Rufus**, **NASM**, and **FerroRaw** to compile and load the operating system, intending to acquire knowledge and experience in operating system development and low-level programming.

## Tools Used

### 1. NASM (Netwide Assembler)
**NASM** is an assembler for low-level language, used to write the operating system code. It allows programmers to create fast and efficient systems for architectures like x86. In this project, NASM will be responsible for translating Assembly code into machine code that will be executed by the processor.

- **Official website**: [https://www.nasm.us/](https://www.nasm.us/)

### 2. Rufus
**Rufus** is a free and easy-to-use tool that allows the creation of bootable USB drives. It will be used to write the operating system image to the USB drive, making it bootable on any machine.

- **Official website**: [https://rufus.ie/](https://rufus.ie/)

### 3. FerroRaw
**FerroRaw** is a tool that can be used to emulate or test the operating system image in a controlled environment before writing it to the USB drive. This tool helps debug and validate the operating system under development.

- **Official website**: [https://www.fergoraw.com/](https://www.fergoraw.com/)

## Project Structure
This repository contains the necessary files to develop a basic operating system. The directory structure is as follows:

```
/src                 # Assembly source code
    /kernel.asm      # Operating system kernel
    /boot.asm        # System bootloader code
    /utils.asm       # Auxiliary functions and utilities
/DiskImage           # Operating system ISO image
/README.md           # This file
```

## Steps to Develop the Operating System

### 1. Setting Up the Development Environment

- **Install NASM**: Download and install NASM on your system. NASM will be used to compile Assembly code into machine code.
  - For **Windows**, download the compatible version from the [NASM official site](https://www.nasm.us/).
  - For **Linux**, you can install it using the command:
    ```bash
    sudo apt-get install nasm
    ```

- **Download Rufus**: Rufus will be used to create a bootable USB drive. Download Rufus from the [official website](https://rufus.ie/).

- **Install FerroRaw**: If needed, download FerroRaw to test the operating system image before writing it to the USB drive.

---

### 2. Developing the Operating System

1. **Write the Assembly code**:  
   In the **/src** directory, you will develop the operating system code. The **kernel.asm** file will be the core of the system, while **boot.asm** will be the bootloader code, responsible for loading the kernel during the system boot process.

2. **Compile the code**:  
   After writing the Assembly code, use **NASM** to compile the `.asm` files into binary format. Run the following command to compile:
   ```bash
   nasm -f bin -o kernel.bin kernel.asm
   ```

   This command will generate the **kernel.bin** binary file, which will be loaded during the operating system boot.

3. **Creating an ISO Image**:  
   After compiling the code, create an ISO image of the operating system using the following command (or use specific tools to generate the ISO):
   ```bash
   genisoimage -o system.iso -b boot.img -no-emul-boot -boot-load-size 4 -boot-info-table /iso
   ```

   This ISO image will be used to write the operating system to the USB drive.

---

### 3. Writing to the USB Drive with Rufus

1. Open **Rufus** and insert the USB drive into your computer.
2. In **Rufus**, select the **ISO image** of your operating system.
3. Choose the **FAT32 File System** option and **Create a bootable disk using the ISO image**.
4. Click **Start** to create the bootable USB drive with the operating system.

After writing, the USB drive will be ready to be used on any machine capable of booting from USB devices.

---

### 4. Testing the Operating System

After creating the bootable USB drive, you can:

- **Test on a computer**: Restart the computer and enter the BIOS/UEFI to select the USB drive as the boot device. The operating system will start running.

- **Emulate with FerroRaw**: If you want to test without restarting your machine, use FerroRaw to emulate the operating system.

---

## Project Goals

This project aims to provide:

- **Low-level learning**: Programming in Assembly, a low-level language that interacts directly with hardware.
- **Operating system development**: A deeper understanding of how operating systems work and are structured.
- **Practical skill training**: The hands-on experience of creating, testing, and debugging an operating system in both real and virtual environments.

---

## Conclusion

Throughout the development of this operating system in Assembly, you will gain a unique understanding of the internal components of an operating system and how low-level interactions between software and hardware occur. Using tools like **NASM**, **Rufus**, and **FerroRaw** will allow you to experience the creation and testing of a real operating system on a USB drive, which can be useful for experimentation, learning, and developing advanced skills in systems programming.

---


