# [README] Development of an Operating System in Assembly for USB Drive

[Read in English](#readme---development-of-an-operating-system-in-assembly-for-usb-drive) | [Leia em Português](#readme---desenvolvimento-de-um-sistema-operacional-em-assembly-para-pendrive)

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

[Read in English](#readme---development-of-an-operating-system-in-assembly-for-usb-drive) | [Leia em Português](#readme---desenvolvimento-de-um-sistema-operacional-em-assembly-para-pendrive)

