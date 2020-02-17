## Overview

The *Enigma* project was designed for Turing School of Software and Development to develop my skills with Ruby, OOP, Test-Driven Development, and version control using Github. It implements a simplified version of the historic Enigma machine and then cracks its encryption, as Alan Turing and his team were depicted doing in *The Imitation Game*.

## Usage

The *Enigma* program can be run from the command line. Clone the repo and navigate to the root directory. To encrypt, use the following syntax, where the first argument is the file containing the text to be encrypted and the second argument is the name of the file to create which will contain the encrypted text.

```
ruby ./lib/encrypt.rb message.txt encrypted.txt
```

To decrypt, use the following syntax, similar to the above but with a third argument which is the random five-digit number used to encrypt the message (take note of it when encrypting) and the fourth argument is the date on which the message was encrypted in DDMMYY format:

```
ruby ./lib/decrypt.rb encrypted.txt decrypted.txt 12345 061119
```

